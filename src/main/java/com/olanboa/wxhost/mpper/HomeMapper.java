package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.httpresult.HomeShopRes;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface HomeMapper {
    List<HomeShopRes> getHomeInfo(@Param("province") String province);

}
