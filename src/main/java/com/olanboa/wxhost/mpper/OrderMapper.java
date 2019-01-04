package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.BaseOrderDb;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderMapper {
    void addOrder(BaseOrderDb baseOrderDb);
}
