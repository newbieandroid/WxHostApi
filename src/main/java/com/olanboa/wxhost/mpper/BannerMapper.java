package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.BannerInfoDb;
import com.olanboa.wxhost.bean.httpreq.BannerDb;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BannerMapper {

    int addBanner(List<BannerDb> bannerReqs);

    int updateBanner(@Param("item") BannerDb updateBannerReq);

    BannerDb getItem(@Param("bannerId") Integer bannerId);

    List<BannerDb> getList();

    List<BannerInfoDb> getBannerItem(Integer bannerId);

}
