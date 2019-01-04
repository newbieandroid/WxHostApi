package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.HouseTypeDb;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface HouseTypeMapper {

    List<HouseTypeDb> getHouseList(@Param("id") Integer typeId);

}
