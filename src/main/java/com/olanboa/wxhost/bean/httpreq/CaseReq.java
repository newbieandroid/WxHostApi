package com.olanboa.wxhost.bean.httpreq;


import com.olanboa.wxhost.bean.CaseDb;
import lombok.Data;

@Data
public class CaseReq {

    private Integer userId;


    private CaseDb caseDb;
}
