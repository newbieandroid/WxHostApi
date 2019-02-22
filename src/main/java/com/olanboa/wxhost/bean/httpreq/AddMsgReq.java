package com.olanboa.wxhost.bean.httpreq;

import lombok.Data;

@Data
public class AddMsgReq {

    private Integer id;
    private String name;
    private String address;
    private String tel;
    private String des;
    private int state = 0;
    private long timeStamp;

}
