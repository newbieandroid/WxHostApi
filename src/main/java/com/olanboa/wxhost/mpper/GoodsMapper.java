package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.DevDb;
import com.olanboa.wxhost.bean.DevTypeDb;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface GoodsMapper {


    List<DevTypeDb> getDevTypes(@Param("typeId") Integer devType);

    List<DevDb> getDevList(@Param("typeId") Integer devType);

}
