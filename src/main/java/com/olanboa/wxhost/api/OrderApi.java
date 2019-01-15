package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.BaseOrderDb;
import com.olanboa.wxhost.bean.HouseTypeDb;
import com.olanboa.wxhost.bean.ShopInfo;
import com.olanboa.wxhost.bean.UserDb;
import com.olanboa.wxhost.bean.httpreq.OrderReq;
import com.olanboa.wxhost.bean.httpresult.*;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.*;
import com.olanboa.wxhost.myexception.CustomExp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/order")
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


    @Autowired
    private OrderRoomMapper orderRoomMapper;


    @PostMapping("/addOrder")
    @Transactional(rollbackFor = Exception.class)
    public BaseHttpResultBean addOrder(@RequestBody OrderReq orderReq) throws CustomExp {
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
                || orderReq.getOrderInfo().getAddress() == null
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

                if (count <= 0) {
                    throw new CustomExp("添加订单费用失败");
                }

            }
            if (orderReq.getOrderDevsDbList() == null || orderReq.getOrderDevsDbList().isEmpty()) {
                throw new CustomExp("请添加订单设备信息");

            } else {
                int count = orderDevsMapper.addOrderDevs(orderReq.getOrderDevsDbList(), orderReq.getOrderInfo().getOrderId());
                if (count <= 0) {
                    throw new CustomExp("添加订单设备失败");
                }
            }


            if (orderReq.getOrderRoomDbList() == null || orderReq.getOrderRoomDbList().isEmpty()) {
                throw new CustomExp("请添加用户房间信息");
            } else {

                int count = orderRoomMapper.addOrderRooms(orderReq.getOrderRoomDbList(), orderReq.getOrderInfo().getOrderId());
                if (count <= 0) {
                    throw new CustomExp("添加订单房间信息失败");
                }
            }


            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());

        } else {
            throw new CustomExp("添加订单信息失败");

        }


        return baseHttpResultBean;

    }


    @GetMapping("/getOrderItem")
    public BaseHttpResultBean getOrderItem(@RequestParam("orderId") Integer orderId, @RequestParam("userId") Integer userId) {
        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();


        UserDb userDb = userMapper.getUserItem(userId, null);

        if (userDb == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前用户不存在");
            return baseHttpResultBean;
        }


        BaseOrderDb orderDb = orderMapper.getOrderItem(orderId);


        if (orderDb == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前订单信息不存在");
            return baseHttpResultBean;
        }


        //如果不是超级管理员 并且不是属于当前订单的买家或者卖家不能查看订单信息
        if (!orderDb.getBuyerId().equals(userId) && !orderDb.getSellerId().equals(userId)) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前用户不能查看别人的订单");
            return baseHttpResultBean;
        }

        OrderResult orderResult = new OrderResult();

        orderResult.setCreatTime(orderDb.getCreatTime());
        List<OrderRoomsRes> orderRoomDbs = orderRoomMapper.getOrderRooms(orderId);

        if (orderRoomDbs == null || orderRoomDbs.isEmpty()) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前订单的房间信息不存在");
            return baseHttpResultBean;
        }
        orderResult.setRoomsResList(orderRoomDbs);

        List<OrderDevRes> orderDevRes = orderDevsMapper.getOrderDevList(orderId);
        if (orderDevRes == null || orderDevRes.isEmpty()) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("当前订单的设备信息不存在");
            return baseHttpResultBean;
        }

        orderResult.setDevResList(orderDevRes);


        OrderBuyerRes orderBuyerRes = userMapper.getBuyerInfo(orderId);

        if (orderBuyerRes == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("获取买家信息失败");
            return baseHttpResultBean;
        }
        orderResult.setBuyerInfo(orderBuyerRes);

        OrderSellerRes orderSellerRes = userMapper.getSellerInfo(orderId);
        if (orderSellerRes == null) {
            baseHttpResultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            baseHttpResultBean.setMsg("获取卖家信息失败");
            return baseHttpResultBean;
        }
        orderResult.setSellerInfo(orderSellerRes);

        List<OrderCostRes> orderCostRes = orderCostMapper.getOrderCost(orderId);
        orderResult.setCostResList(orderCostRes);


        baseHttpResultBean.setResult(orderResult);

        baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
        return baseHttpResultBean;
    }


}
