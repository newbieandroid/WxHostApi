package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.OrderRoomDb;
import com.olanboa.wxhost.bean.httpresult.OrderRoomsRes;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface OrderRoomMapper {

    int addOrderRooms(List<OrderRoomDb> orderRoomDbList, Integer orderId);


    List<OrderRoomsRes> getOrderRooms(@Param("orderId") Integer orderId);

}
