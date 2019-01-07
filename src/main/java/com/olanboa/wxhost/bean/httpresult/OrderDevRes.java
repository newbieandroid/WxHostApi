package com.olanboa.wxhost.bean.httpresult;

import lombok.Data;

@Data
public class OrderDevRes {

    private Integer oDevId;
    private String dTypeName;
    private String dName;
    private String dIcon;
    private String devDesc;
    private String dRoomName;
    private Integer sellCount;

    private Double sellPrice;
    private Double price;
}
