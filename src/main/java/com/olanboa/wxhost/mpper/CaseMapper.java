package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.CaseDb;
import com.olanboa.wxhost.bean.httpresult.CaseItemResult;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CaseMapper {
    int addCaseItem(CaseDb caseDb);

    List<CaseItemResult> getCaseList(@Param("shopId") Integer shopId);
}
