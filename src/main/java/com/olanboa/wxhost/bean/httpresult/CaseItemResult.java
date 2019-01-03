package com.olanboa.wxhost.bean.httpresult;

import lombok.Data;


@Data
public class CaseItemResult {

    private Integer caseId;
    private String pic;
    private String title;
    private Long time;
    private String shopName;
    private String address;
    private String userName;
    private String phone;
}
