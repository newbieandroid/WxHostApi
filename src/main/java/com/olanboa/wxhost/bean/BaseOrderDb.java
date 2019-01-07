package com.olanboa.wxhost.bean;

import lombok.Data;

@Data
public class BaseOrderDb {
    private Integer orderId;
    private Integer buyerId;
    private Integer sellerId;
    private Integer shopId;
    private Integer houseTypeId;
    private Integer state;
    private String address;
    private Long creatTime;
}
