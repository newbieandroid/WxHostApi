package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.httpresult.AllGoodsInfoRes;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.GoodsMapper;
import com.olanboa.wxhost.utils.SetResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/goods")
public class GoodsApi {

    @Autowired
    GoodsMapper goodsMapper;

    @GetMapping("/getDevTypeAndDevs")
    public BaseHttpResultBean getDevTypeAndDevs(@RequestParam(name = "typeId", required = false) Integer id) {

        System.out.println("---->" + id);
        AllGoodsInfoRes goodsInfoRes = new AllGoodsInfoRes();
        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();
        baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
        goodsInfoRes.setGoodsTypeDbs(goodsMapper.getDevTypes((id == null || id == 0) ? null : id));
        goodsInfoRes.setDevDbList(goodsMapper.getDevList((id == null || id == 0) ? null : id));
        baseHttpResultBean.setResult(goodsInfoRes);
        return baseHttpResultBean;
    }


    @GetMapping("/getDevInfo")
    public BaseHttpResultBean getDevInfo(@RequestParam("devId") Integer devId) {

      return   SetResultUtils.checkResult(goodsMapper.getDevInfo(devId));
    }
}
