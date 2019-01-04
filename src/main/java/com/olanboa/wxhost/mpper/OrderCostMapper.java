package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.OrderCostDb;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderCostMapper {

    int addOrderCost(List<OrderCostDb> orderCostDbList, Integer orderId);

}
