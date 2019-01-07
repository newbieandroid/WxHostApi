package com.olanboa.wxhost.bean.httpreq;

import lombok.Data;

@Data
public class GetOrderReq {
    private Integer userId;
    private Integer orderId;

}
