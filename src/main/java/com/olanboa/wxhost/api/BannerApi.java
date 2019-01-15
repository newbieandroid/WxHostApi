package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.httpreq.AddBannerReq;
import com.olanboa.wxhost.bean.httpreq.BannerDb;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.BannerMapper;
import com.olanboa.wxhost.mpper.UserMapper;
import com.olanboa.wxhost.myexception.CustomExp;
import com.olanboa.wxhost.utils.SetResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/banner")
public class BannerApi {

    @Autowired
    BannerMapper bannerMapper;

    @Autowired
    UserMapper userMapper;


    @PostMapping("/addBanner")
    @Transactional(rollbackFor = Exception.class)
    public BaseHttpResultBean addBanner(@RequestBody AddBannerReq imgs) throws CustomExp {


        if (imgs.getUserId() == null || imgs.getImgPath() == null || imgs.getImgPath().isEmpty()) {
            throw new CustomExp("缺少参数");
        }


        if (userMapper.getUserItem(imgs.getUserId(), null) == null) {
            throw new CustomExp("当前用户不存在");
        }


        //插入新数据 并且返回插入数据成功后的主键,如果需要返回自增主键 在mapper中不能使用param注解  经过测试如果用注解则不会返回自增主键
        int count = bannerMapper.addBanner(imgs.getImgPath());

        if (count <= 0) {
            throw new CustomExp("添加banner失败");
        }

        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());

        return baseHttpResultBean;

    }

    @PostMapping("/updateBanner")
    @Transactional(rollbackFor = Exception.class)
    public BaseHttpResultBean updateBanner(@RequestBody BannerDb bannerReq) throws CustomExp {
        int count = bannerMapper.updateBanner(bannerReq);

        BaseHttpResultBean result = new BaseHttpResultBean();
        if (count > 0) {
            result.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            result.setMsg(ResultCodeType.SUCCESS.getMsg());
        } else {
            throw new CustomExp("更新banner失败");
        }

        return result;

    }


    @GetMapping("/getBannerItem")
    public BaseHttpResultBean getBannerItem(@RequestParam(name = "id", required = true) Integer bannerId) {
        BannerDb item = bannerMapper.getItem(bannerId);
        return SetResultUtils.checkResult(item);
    }


    @GetMapping("/getBannerList")
    public BaseHttpResultBean getBannerList() {
        List<BannerDb> item = bannerMapper.getList();
        return SetResultUtils.checkResult(item);
    }


}
