package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.BaseOrderDb;
import com.olanboa.wxhost.bean.HouseTypeDb;
import com.olanboa.wxhost.bean.ShopInfo;
import com.olanboa.wxhost.bean.UserDb;
import com.olanboa.wxhost.bean.httpreq.OrderReq;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.*;
import com.qiniu.util.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class OrderApi {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private OrderDevsMapper orderDevsMapper;

    @Autowired
    private OrderCostMapper orderCostMapper;

    @Autowired
    private ShopMapper shopMapper;

    @Autowired
    private HouseTypeMapper houseTypeMapper;


    @PostMapping("/addOrder")
    @Transactional(rollbackFor = Exception.class)
    public BaseHttpResultBean addOrder(@RequestBody OrderReq orderReq) {
        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();


        UserDb userDb = userMapper.getUserItem(orderReq.getUserId(), null);

        if (userDb == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前用户不存在");
            return baseHttpResultBean;
        }

        if (userDb.getUserTypeId() == 2) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("消费者暂无权限进行此操作");
            return baseHttpResultBean;
        }


        if (orderReq.getOrderInfo() == null
                || orderReq.getOrderInfo().getBuyerId() == null
                || orderReq.getOrderInfo().getSellerId() == null
                || orderReq.getOrderInfo().getShopId() == null
                || orderReq.getOrderInfo().getHouseTypeId() == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.PARAMERROR.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.PARAMERROR.getMsg());
            return baseHttpResultBean;
        }

        ShopInfo shopInfo = shopMapper.getShopInfo(orderReq.getOrderInfo().getShopId());

        if (shopInfo == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前店铺不存在");
            return baseHttpResultBean;
        }

        List<HouseTypeDb> houseTypeDb = houseTypeMapper.getHouseList(orderReq.getOrderInfo().getHouseTypeId());

        if (houseTypeDb == null || houseTypeDb.isEmpty()) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("房子类型不存在");
            return baseHttpResultBean;
        }

        UserDb sellUserInfo = userMapper.getUserItem(orderReq.getOrderInfo().getBuyerId(), null);
        if (sellUserInfo == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("买家信息不存在");
            return baseHttpResultBean;
        }

        orderMapper.addOrder(orderReq.getOrderInfo());

        if (orderReq.getOrderInfo().getOrderId() > 0) {

            if (orderReq.getOrderCostDbList() != null && !orderReq.getOrderCostDbList().isEmpty()) {
                int count = orderCostMapper.addOrderCost(orderReq.getOrderCostDbList(), orderReq.getOrderInfo().getOrderId());


            }
            if (orderReq.getOrderDevsDbList() == null || orderReq.getOrderDevsDbList().isEmpty()) {
                baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
                baseHttpResultBean.setMsg("请添加商品信息");
            } else {
                orderDevsMapper.addOrderDevs(orderReq.getOrderDevsDbList(), orderReq.getOrderInfo().getOrderId());
            }

            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());


            System.out.println("-----插入成功后返回包含自增主键的信息----->" + Json.encode(orderReq));

        } else {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.FAIL.getMsg());
        }


        return baseHttpResultBean;

    }


}
