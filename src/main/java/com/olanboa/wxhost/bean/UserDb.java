package com.olanboa.wxhost.bean;

import lombok.Data;

@Data
public class UserDb {


    private Integer masterId;

    private Integer userId;
    private String userName;
    private String phone;
    private String passWord;
    private Integer userTypeId;
    private Integer state;
    private Integer shopdId;

    private String head;


}
