package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.ShopInfo;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.ShopMapper;
import com.olanboa.wxhost.myexception.CustomExp;
import com.olanboa.wxhost.utils.SetResultUtils;
import com.qiniu.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/shop")
public class ShopApi {


    @Autowired
    ShopMapper shopMapper;

    @PostMapping("/addShop")
    @Transactional(rollbackFor = Exception.class)
    BaseHttpResultBean addShop(@RequestBody ShopInfo shopInfo) throws CustomExp {

        BaseHttpResultBean resultBean = new BaseHttpResultBean();

        if (shopInfo != null
                && !StringUtils.isNullOrEmpty(shopInfo.getShopName())
                && shopInfo.getHostid() != null
                && !StringUtils.isNullOrEmpty(shopInfo.getDesc())
                && !StringUtils.isNullOrEmpty(shopInfo.getProvince())
                && !StringUtils.isNullOrEmpty(shopInfo.getAddress())) {

            shopMapper.addShopMapper(shopInfo);


            if (shopInfo.getShopId() != null) {

                int count = shopMapper.addShopImg(shopInfo.getShopId(), shopInfo.getImgs());

                if (count > 0) {
                    resultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
                    resultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
                } else {
                    throw new CustomExp("添加店铺图片失败");
                }


            } else {
                throw new CustomExp(ResultCodeType.FAIL.getMsg());
            }
        } else {
            resultBean.setMsg("缺少必要参数");
            resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());

        }

        return resultBean;
    }


    @PostMapping("/updateShop")
    @Transactional(rollbackFor = Exception.class)
    BaseHttpResultBean updateShop(@RequestBody ShopInfo shopInfo) throws CustomExp {


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
            throw new CustomExp(ResultCodeType.FAIL.getMsg());
        }

        return baseHttpResultBean;
    }

    @GetMapping("/getShopItem")
    BaseHttpResultBean<ShopInfo> getShopItem(@RequestParam("shopId") int shopId) {
        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        ShopInfo shopInfo = shopMapper.getShopInfo(shopId);
        shopInfo.setImgs(shopMapper.getShopImgs(shopId));

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
    BaseHttpResultBean getShopList(@RequestParam(required = false, name = "province") String data, @RequestParam(required = false, name = "shopId") Integer shopId) {

        if (shopId == 0) {
            shopId = null;
        }

        return SetResultUtils.checkResult(shopMapper.getShopList(data, shopId));
    }


}
