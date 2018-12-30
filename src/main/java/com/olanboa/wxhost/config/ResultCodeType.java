package com.olanboa.wxhost.config;


public enum ResultCodeType {

    SUCCESS(100, "获取数据成功"),
    SQLERROR(101, "远程链接失败"),
    EMPTYDATA(102, "暂无数据"),
    PARAMERROR(103, "参数错误"),
    ;

    private int errorCode;
    private String msg;

    public int getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(int errorCode) {
        this.errorCode = errorCode;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    ResultCodeType(int errorCode, String msg) {
        this.errorCode = errorCode;
        this.msg = msg;
    }
}
