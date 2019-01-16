package com.olanboa.wxhost.bean;

import lombok.Data;

@Data
public class DevDb {
    private Integer id;
    private Integer devTypeId;
    private String devName;
    private String devImg;
    private Double price;
    private String devDes;

}
