package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.HomeBean;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.BannerMapper;
import com.olanboa.wxhost.mpper.HomeMapper;
import com.olanboa.wxhost.mpper.ImageMapper;
import com.olanboa.wxhost.mpper.ShopMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class HomeApi {

    @Autowired
    private HomeMapper homeMapper;

    @Autowired
    private BannerMapper bannerMapper;

    @Autowired
    private ShopMapper shopMapper;

    @Autowired
    private ImageMapper imageMapper;

    @GetMapping(name = "/getHomeInfo")
    BaseHttpResultBean<HomeBean> getHomeInfo(@RequestParam(required = false, name = "province") String province) {

        BaseHttpResultBean<HomeBean> baseHttpResultBean = new BaseHttpResultBean<HomeBean>();
        HomeBean homeBean = new HomeBean();
        homeBean.setBeanners(bannerMapper.getList());
        homeBean.setShopInfoList(shopMapper.getShopList(province, null));
        homeBean.setImgs(imageMapper.getHomeImg());
        baseHttpResultBean.setResult(homeBean);

        baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
        baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());

        return baseHttpResultBean;
    }


}
