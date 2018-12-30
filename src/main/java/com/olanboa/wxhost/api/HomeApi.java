package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.HomeBean;
import com.olanboa.wxhost.mpper.HomeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HomeApi {

    @Autowired
    private HomeMapper homeMapper;


    @RequestMapping(method = RequestMethod.GET, name = "/getHomeInfo")
    BaseHttpResultBean<List<HomeBean>> getHomeInfo(@RequestParam(required = false, name = "province") String province) {

        BaseHttpResultBean baseBean = new BaseHttpResultBean();

        baseBean.setResult(homeMapper.getHomeInfo(province));

        return baseBean;
    }

}
