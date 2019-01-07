package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.OrderDevsDb;
import com.olanboa.wxhost.bean.httpresult.OrderDevRes;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrderDevsMapper {

    int addOrderDevs(List<OrderDevsDb> devsDbList, Integer orderId);

    List<OrderDevRes> getOrderDevList(@Param("orderId") Integer orderId);
}
