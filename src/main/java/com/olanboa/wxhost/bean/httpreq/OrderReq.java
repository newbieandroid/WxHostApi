package com.olanboa.wxhost.bean.httpreq;

import com.olanboa.wxhost.bean.BaseOrderDb;
import com.olanboa.wxhost.bean.OrderCostDb;
import com.olanboa.wxhost.bean.OrderDevsDb;
import lombok.Data;

import java.util.List;

@Data
public class OrderReq {
    private Integer userId;
    private BaseOrderDb orderInfo;
    private List<OrderCostDb> orderCostDbList;
    private List<OrderDevsDb> orderDevsDbList;

}
