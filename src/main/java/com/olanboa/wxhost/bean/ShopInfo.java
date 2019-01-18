package com.olanboa.wxhost.bean;

import lombok.Data;

import java.util.List;


@Data
public class ShopInfo {


    private String shopIcon;
    private Integer shopId;
    private String shopName;
    private String address;
    private String province;
    private Integer hostid;
    private List<ShopImgDb> imgs;
    private String desc;
    private int state;

}
