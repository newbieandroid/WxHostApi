package com.olanboa.wxhost.bean.httpreq;

import lombok.Data;

import java.util.List;

@Data
public class AddBannerReq {
    List<BannerDb> imgPath;
}
