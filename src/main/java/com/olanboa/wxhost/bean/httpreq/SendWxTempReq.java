package com.olanboa.wxhost.bean.httpreq;

import lombok.Data;

@Data
public class SendWxTempReq {

    private String wxCode;
    private String nickName;
    private String wxId;
    private String tel;
    private String content;
}
