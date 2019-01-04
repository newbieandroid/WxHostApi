package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.CostDb;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CostMapper {


    int addCost(CostDb costDb);

    List<CostDb> getCostList();

}
