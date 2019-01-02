package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.httpreq.HomeImgDb;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


@Mapper
public interface ImageMapper {

    List<HomeImgDb> getHomeImg();

    int addHomeImg(List<HomeImgDb> imgs);

    int updateHomeImg(@Param("data") HomeImgDb imgs);

}
