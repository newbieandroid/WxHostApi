package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.ShopInfo;
import com.olanboa.wxhost.bean.UserDb;
import com.olanboa.wxhost.bean.UserTypeDb;
import com.olanboa.wxhost.bean.httpreq.SendWxTempReq;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.ShopMapper;
import com.olanboa.wxhost.mpper.UserMapper;
import com.olanboa.wxhost.myexception.CustomExp;
import com.olanboa.wxhost.utils.HttpUtil;
import com.olanboa.wxhost.utils.SetResultUtils;
import com.qiniu.util.Json;
import com.qiniu.util.StringMap;
import com.qiniu.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserApi {


    @Autowired
    UserMapper userMapper;


    @Autowired
    ShopMapper shopMapper;

    @GetMapping("/getUserType")
    public BaseHttpResultBean getUserType() {
        return SetResultUtils.checkResult(userMapper.getUserType());
    }


    @PostMapping("/addShopUser")
    @Transactional(rollbackFor = Exception.class)
    public BaseHttpResultBean addShopUser(@RequestBody UserDb addShopUserReq) throws CustomExp {

        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        if (addShopUserReq == null

                || StringUtils.isNullOrEmpty(addShopUserReq.getUserName())
                || StringUtils.isNullOrEmpty(addShopUserReq.getPhone())
                || addShopUserReq.getShopdId() == null || addShopUserReq.getShopdId() == 0
                || addShopUserReq.getUserTypeId() == null || addShopUserReq.getUserTypeId() == 0
                || addShopUserReq.getUserId() == null || addShopUserReq.getUserId() == 0
        ) {
            baseHttpResultBean.setMsg(ResultCodeType.PARAMERROR.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.PARAMERROR.getErrorCode());
            return baseHttpResultBean;
        }

        if (addShopUserReq.getUserTypeId() != 2 && StringUtils.isNullOrEmpty(addShopUserReq.getPassWord())) {
            baseHttpResultBean.setMsg("除了顾客用户类型都需要设置密码");
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            return baseHttpResultBean;
        }


        ShopInfo shopInfo = shopMapper.getShopInfo(addShopUserReq.getShopdId());

        if (shopInfo == null) {
            baseHttpResultBean.setMsg("店铺不存在");
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            return baseHttpResultBean;
        }


        boolean userTypeContain = false;
        for (UserTypeDb userTypeDb : userMapper.getUserType()) {
            if (userTypeDb.getTypeId().equals(addShopUserReq.getUserTypeId())) {
                userTypeContain = true;
                break;
            }
        }

        if (!userTypeContain) {
            baseHttpResultBean.setMsg("用户类型不存在");
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            return baseHttpResultBean;
        }


        UserDb userDb = userMapper.getUserItem(addShopUserReq.getUserId(), null);

        if (userDb == null) {
            baseHttpResultBean.setMsg("当前账号异常");
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            return baseHttpResultBean;
        }

        switch (userDb.getUserTypeId()) {

            case 1://销售员

                if (addShopUserReq.getUserTypeId() != 2) {
                    baseHttpResultBean.setMsg("当前账号暂无权限进行此操作");
                    baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
                    return baseHttpResultBean;
                }
                break;
            case 2://顾客
                baseHttpResultBean.setMsg("当前账号暂无权限进行此操作");
                baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
                return baseHttpResultBean;
            case 3://门店管理员

                if (addShopUserReq.getUserTypeId() == 4 || addShopUserReq.getUserTypeId() == 3) {
                    baseHttpResultBean.setMsg("当前账号暂无权限进行此操作");
                    baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
                    return baseHttpResultBean;
                }
                break;

        }


        int count = userMapper.addShopUserReq(addShopUserReq);//返回插入成功的条数

        if (count > 0) {
            baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
        } else {
            throw new CustomExp("添加账号失败");
        }
        return baseHttpResultBean;
    }


    @PostMapping("/updateUserInfo")
    @Transactional(rollbackFor = Exception.class)
    public BaseHttpResultBean updateUserInfo(@RequestBody UserDb userDb) throws CustomExp {
        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        if (userDb.getUserId() == null || userDb.getUserId() <= 0
                || userDb.getMasterId() == null || userDb.getMasterId() <= 0) {
            baseHttpResultBean.setMsg(ResultCodeType.FAIL.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            return baseHttpResultBean;
        }

        if (userDb.getUserTypeId() != null) {

            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("系统暂未开放更改权限的操作");

            return baseHttpResultBean;
        }


        //当前操作的用户
        UserDb masterUserInfo = userMapper.getUserItem(userDb.getMasterId(), null);

        if (masterUserInfo == null || masterUserInfo.getUserTypeId() == 2) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前用户不存在或无权限操作");
            return baseHttpResultBean;
        }


        UserDb oldUserInfo = userMapper.getUserItem(userDb.getUserId(), null);

        if (oldUserInfo == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前用户不存在");
            return baseHttpResultBean;
        }

        int count = userMapper.updateUserInfo(userDb);

        if (count > 0) {
            baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
        } else {

            throw new CustomExp(ResultCodeType.FAIL.getMsg());

        }

        return baseHttpResultBean;

    }

    @GetMapping("/getUserList")
    public BaseHttpResultBean getUserList(@RequestParam(required = false, name = "shopId") Integer shopId, @RequestParam("userId") Integer userId) {

        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();
        UserDb reqUserInfo = userMapper.getUserItem(userId, null);

        if (reqUserInfo == null || reqUserInfo.getUserTypeId() == 2) {
            baseHttpResultBean.setMsg("当前用户不存在或没有权限");
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            return baseHttpResultBean;
        }

        if (shopId == null) {
            if (reqUserInfo.getUserTypeId() != 4) {
                baseHttpResultBean.setErrorCode(ResultCodeType.PARAMERROR.getErrorCode());
                baseHttpResultBean.setMsg(ResultCodeType.PARAMERROR.getMsg());
                return baseHttpResultBean;
            }
        } else {

            ShopInfo shopInfo = shopMapper.getShopInfo(shopId);
            if (shopInfo == null) {
                baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
                baseHttpResultBean.setMsg("当前店铺不存在");
                return baseHttpResultBean;
            }

            if (reqUserInfo.getUserTypeId() != 4 && !reqUserInfo.getShopdId().equals(shopId)) {
                baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
                baseHttpResultBean.setMsg("只能查询当前用户所属店铺的人员");
                return baseHttpResultBean;
            }


        }

        List<UserDb> userDbList = userMapper.getUserList(shopId, userId);


        if (userDbList == null || userDbList.size() == 0) {

            baseHttpResultBean.setMsg(ResultCodeType.NOTFIND.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.NOTFIND.getErrorCode());
            return baseHttpResultBean;
        }

        baseHttpResultBean.setResult(userDbList);
        baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());

        return baseHttpResultBean;

    }


    @PostMapping("/sendWxTemp")
    public BaseHttpResultBean sendWxTemp(@RequestBody SendWxTempReq sendWxTempReq) {

        String accessToken = Json.decode(HttpUtil.HttpRestClient("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wxf55f304ecb1cceb9&secret=02715b1ff4e3abf1d7355290b714cc2d", HttpMethod.GET, new LinkedMultiValueMap<String, String>())).get("access_token").toString();

        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        StringMap openIdMap = Json.decode(HttpUtil.HttpRestClient("https://api.weixin.qq.com/sns/jscode2session?&appid=wxf55f304ecb1cceb9&secret=02715b1ff4e3abf1d7355290b714cc2d&grant_type=authorization_code&js_code=" + sendWxTempReq.getWxCode(), HttpMethod.GET, new LinkedMultiValueMap<String, String>()));
        if ((int) openIdMap.get("errcode") == 0) {
            String openId = openIdMap.get("openid").toString();



        } else {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("获取用户的openId失败");
        }

        return baseHttpResultBean;
    }

}
