package com.olanboa.wxhost.bean;

import lombok.Data;

@Data
public class CaseDb {

    private Integer caseId;
    private String casePic;
    private String caseTitle;
    private Long time;
    private Integer shopId;
    private Integer state;

}
