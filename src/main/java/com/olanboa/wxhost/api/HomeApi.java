package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.HomeBean;
import com.olanboa.wxhost.mpper.HomeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class HomeApi {

    @Autowired
    private HomeMapper homeMapper;

    @GetMapping(name = "/getHomeInfo")
    BaseHttpResultBean<HomeBean> getHomeInfo(@RequestParam(required = false, name = "province") String province) {

        BaseHttpResultBean<HomeBean> baseHttpResultBean = new BaseHttpResultBean<HomeBean>();

        HomeBean homeBean = new HomeBean();
        homeMapper.getHomeInfo(province);

        return baseHttpResultBean;
    }


}
