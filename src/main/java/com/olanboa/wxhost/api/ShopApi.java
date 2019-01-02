package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.ShopInfo;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.ShopMapper;
import com.olanboa.wxhost.utils.SetResultUtils;
import com.qiniu.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class ShopApi {


    @Autowired
    ShopMapper shopMapper;

    @PostMapping("addShop")
    BaseHttpResultBean addShop(@RequestBody ShopInfo shopInfo) {

        BaseHttpResultBean resultBean = new BaseHttpResultBean();

        if (shopInfo != null
                && !StringUtils.isNullOrEmpty(shopInfo.getShopName())
                && shopInfo.getHostid() != null
                && !StringUtils.isNullOrEmpty(shopInfo.getDesc())
                && !StringUtils.isNullOrEmpty(shopInfo.getProvince())
                && !StringUtils.isNullOrEmpty(shopInfo.getAddress())) {

            shopMapper.addShopMapper(shopInfo);


            if (shopInfo.getShopId() != null) {

                resultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
                resultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());

            } else {
                resultBean.setMsg(ResultCodeType.FAIL.getMsg());
                resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            }
        } else {
            resultBean.setMsg("缺少必要参数");
            resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());

        }

        return resultBean;
    }


    @PostMapping("updateShop")
    BaseHttpResultBean updateShop(@RequestBody ShopInfo shopInfo) {


        BaseHttpResultBean baseHttpResultBean = getShopItem(shopInfo.getShopId());

        if (baseHttpResultBean.getErrorCode() != ResultCodeType.SUCCESS.getErrorCode()) {
            return baseHttpResultBean;
        }


        baseHttpResultBean.setResult(null);


        int count = shopMapper.updateShop(shopInfo);

        if (count > 0) {
            baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());

        } else {
            baseHttpResultBean.setMsg(ResultCodeType.FAIL.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
        }

        return baseHttpResultBean;
    }

    @GetMapping("/getShopItem")
    BaseHttpResultBean<ShopInfo> getShopItem(@RequestParam(required = true, name = "shopId") int shopId) {
        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        ShopInfo shopInfo = shopMapper.getShopInfo(shopId);
        baseHttpResultBean.setResult(shopInfo);
        if (shopInfo != null) {
            baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
        } else {
            baseHttpResultBean.setMsg(ResultCodeType.NOTFIND.getMsg());
            baseHttpResultBean.setErrorCode(ResultCodeType.NOTFIND.getErrorCode());
        }

        return baseHttpResultBean;
    }


    @GetMapping("/getShopList")
    BaseHttpResultBean getShopList(@RequestParam(required = false, name = "province") String data) {

        return SetResultUtils.checkResult(shopMapper.getShopList(data));
    }


}
