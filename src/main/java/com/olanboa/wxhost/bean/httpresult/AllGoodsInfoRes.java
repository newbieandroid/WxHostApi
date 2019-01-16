package com.olanboa.wxhost.bean.httpresult;

import com.olanboa.wxhost.bean.DevDb;
import com.olanboa.wxhost.bean.DevTypeDb;
import lombok.Data;

import java.util.List;

@Data
public class AllGoodsInfoRes {
    private List<DevTypeDb> goodsTypeDbs;

    private List<DevDb> devDbList;
}
