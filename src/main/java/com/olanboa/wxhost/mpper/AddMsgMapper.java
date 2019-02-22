package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.httpreq.AddMsgReq;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AddMsgMapper {

    int addMsg(AddMsgReq addMsgReq);

}
