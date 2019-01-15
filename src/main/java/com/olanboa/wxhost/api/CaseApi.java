package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.ShopInfo;
import com.olanboa.wxhost.bean.UserDb;
import com.olanboa.wxhost.bean.httpreq.CaseReq;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.CaseMapper;
import com.olanboa.wxhost.mpper.ShopMapper;
import com.olanboa.wxhost.mpper.UserMapper;
import com.olanboa.wxhost.utils.SetResultUtils;
import com.qiniu.util.Json;
import com.qiniu.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/case")
public class CaseApi {

    @Autowired
    private CaseMapper caseMapper;

    @Autowired
    private UserMapper userMapper;


    @Autowired
    private ShopMapper shopMapper;


    @PostMapping("/addCaseItem")
    public BaseHttpResultBean addCaseItem(@RequestBody CaseReq caseReq) {

        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        if (caseReq.getUserId() == null || caseReq.getUserId() == 0
                || caseReq.getCaseDb().getShopId() == null || caseReq.getCaseDb().getShopId() == 0
                || StringUtils.isNullOrEmpty(caseReq.getCaseDb().getCaseTitle())
                || StringUtils.isNullOrEmpty(caseReq.getCaseDb().getCasePic())

        ) {
            baseHttpResultBean.setErrorCode(ResultCodeType.PARAMERROR.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.PARAMERROR.getMsg());
            return baseHttpResultBean;
        }

        UserDb userDb = userMapper.getUserItem(caseReq.getUserId(), null);

        if (userDb == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前用户不存在");
            return baseHttpResultBean;
        }

        ShopInfo shopInfo = shopMapper.getShopInfo(caseReq.getCaseDb().getShopId());

        if (shopInfo == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前店铺不存在");
            return baseHttpResultBean;
        }


        caseMapper.addCaseItem(caseReq.getCaseDb());


        if (caseReq.getCaseDb().getCaseId() > 0) {
            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        } else {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.FAIL.getMsg());
        }


        return baseHttpResultBean;


    }

    @GetMapping("/getCaseList")
    public BaseHttpResultBean getCaseList(@RequestParam("userId") Integer userId, @RequestParam(required = false, name = "shopId") Integer shopId) {

        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();
        UserDb userDb = userMapper.getUserItem(userId, null);


        if (userDb == null) {
            baseHttpResultBean.setMsg("获取失败,当前用户不存在");
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            return baseHttpResultBean;
        }


        return SetResultUtils.checkResult(caseMapper.getCaseList(shopId));

    }


}
