package com.olanboa.wxhost.bean;

import lombok.Data;

import java.io.Serializable;

@Data
public class ShopInfo implements Serializable {

    private static final long serialVersionUID = -7633431128054823557L;

    private Integer id;
    private String shopName;
    private String address;
    private String province;
    private Integer hostid;

}
