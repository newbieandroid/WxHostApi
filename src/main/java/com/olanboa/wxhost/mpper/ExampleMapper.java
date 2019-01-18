package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.ExampleDb;
import com.olanboa.wxhost.bean.ExampleImgDb;
import com.olanboa.wxhost.bean.httpresult.ExampleRes;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ExampleMapper {


    int addExample(ExampleDb exampleDb);

    List<ExampleRes> getExampleList();

    List<ExampleImgDb> getImgs(Integer caseId);
}
