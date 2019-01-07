package com.olanboa.wxhost.bean.httpresult;


import com.olanboa.wxhost.bean.OrderCostDb;
import lombok.Data;

import java.util.List;

@Data
public class OrderResult {

    private Long creatTime;

    private OrderBuyerRes buyerInfo;
    private OrderSellerRes sellerInfo;

    private List<OrderCostRes> costResList;
    private List<OrderDevRes> devResList;
    private List<OrderRoomsRes> roomsResList;

}
