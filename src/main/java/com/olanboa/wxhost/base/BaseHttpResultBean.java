package com.olanboa.wxhost.base;


import lombok.Data;

@Data
public class BaseHttpResultBean<T> {

    int errorCode;
    String msg;
    T result;

}
