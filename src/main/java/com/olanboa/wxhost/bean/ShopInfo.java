package com.olanboa.wxhost.bean;

import lombok.Data;


@Data
public class ShopInfo {


    private Integer shopId;
    private String shopName;
    private String address;
    private String province;
    private Integer hostid;
    private String imgs;
    private String desc;
    private int state;

}
