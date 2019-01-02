package com.olanboa.wxhost.bean;


import lombok.Data;

import java.util.List;

@Data
public class HomeBean {
    String address;
    List<String> beanners;
    List<String> imgs;
    List<ShopInfo> shopInfoList;

}
