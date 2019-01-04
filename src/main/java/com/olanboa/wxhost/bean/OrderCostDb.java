package com.olanboa.wxhost.bean;

import lombok.Data;

@Data
public class OrderCostDb {
    private Integer orderCostId;
    private Integer orderId;
    private Integer costTypeId;
    private Double price;
}
