package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.OrderCostDb;
import com.olanboa.wxhost.bean.httpresult.OrderCostRes;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrderCostMapper {

    int addOrderCost(List<OrderCostDb> orderCostDbList, Integer orderId);

    List<OrderCostRes> getOrderCost(@Param("orderId") Integer orderId);

}
