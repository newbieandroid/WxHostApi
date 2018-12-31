package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.httpreq.AddBannerReq;
import com.olanboa.wxhost.bean.httpreq.BannerDb;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.BannerMapper;
import com.olanboa.wxhost.utils.SetResultUtils;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
public class BannerApi {

    @Autowired
    BannerMapper bannerMapper;


    @PostMapping("addBanner")
    public BaseHttpResultBean addBanner(@RequestBody AddBannerReq imgs) {

        //插入新数据 并且返回插入数据成功后的主键,如果需要返回自增主键 在mapper中不能使用param注解  经过测试如果用注解则不会返回自增主键
        bannerMapper.addBanner(imgs.getImgPath());
        for (BannerDb item : imgs.getImgPath()) {
            System.out.println("--------------->" + item.getBannerId());
        }

        return SetResultUtils.checkResult(imgs);

    }

    @PostMapping("updateBanner")
    public BaseHttpResultBean updateBanner(@RequestBody BannerDb bannerReq) {
        int count = bannerMapper.updateBanner(bannerReq);

        BaseHttpResultBean result = new BaseHttpResultBean();
        if (count > 0) {
            result.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            result.setMsg(ResultCodeType.SUCCESS.getMsg());
        } else {
            result.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            result.setMsg(ResultCodeType.FAIL.getMsg());
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
