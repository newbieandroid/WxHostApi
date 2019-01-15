package com.olanboa.wxhost.bean;


import com.olanboa.wxhost.bean.httpreq.BannerDb;
import com.olanboa.wxhost.bean.httpreq.HomeImgDb;
import com.olanboa.wxhost.bean.httpresult.HomeShopRes;
import lombok.Data;

import java.util.List;

@Data
public class HomeBean {
    List<BannerDb> beanners;
    List<HomeImgDb> imgs;
    List<HomeShopRes> shopResList;

}
