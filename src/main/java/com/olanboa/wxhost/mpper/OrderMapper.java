package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.BaseOrderDb;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface OrderMapper {
    void addOrder(BaseOrderDb baseOrderDb);

    BaseOrderDb getOrderItem(@Param("orderId") Integer orderId);
}
