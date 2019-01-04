package com.olanboa.wxhost.bean;

import lombok.Data;

@Data
public class OrderDevsDb {

    private Integer id;
    private Integer orderId;
    private Double sellPrice;
    private Integer roomTypeId;
    private Integer devCount;
    private Integer devId;


}
