package com.olanboa.wxhost.bean.httpresult;

import lombok.Data;

@Data
public class OrderBuyerRes {

    private Integer userId;

    private String buyerName;
    private String buyerTel;
    private String houseName;
    private String address;

}
