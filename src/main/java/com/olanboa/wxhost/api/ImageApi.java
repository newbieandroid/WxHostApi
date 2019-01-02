package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.httpreq.AddHomeImgReq;
import com.olanboa.wxhost.bean.httpreq.HomeImgDb;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.ImageMapper;
import com.olanboa.wxhost.utils.SetResultUtils;
import com.qiniu.util.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ImageApi {


    @Autowired
    ImageMapper imageMapper;


    @GetMapping("/getHomeImg")
    BaseHttpResultBean<List<HomeImgDb>> getHomeImgs() {
        return SetResultUtils.checkResult(imageMapper.getHomeImg());
    }


    @PostMapping("/addHomeImg")
    BaseHttpResultBean<String> addHomeImg(@RequestBody AddHomeImgReq datas) {

        int count = imageMapper.addHomeImg(datas.getImgs());

        System.out.println("------------->" + count);

        System.out.println("------------->" + Json.encode(datas));

        BaseHttpResultBean resultBean = new BaseHttpResultBean<>();

        if (count > 0) {
            resultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            resultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        } else {
            resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            resultBean.setMsg(ResultCodeType.FAIL.getMsg());
        }

        return resultBean;
    }

    @PostMapping("/updateHomeImg")
    BaseHttpResultBean updateHomeImg(@RequestBody HomeImgDb homeImgDb) {

        BaseHttpResultBean resultBean = new BaseHttpResultBean<>();

        if (homeImgDb == null || homeImgDb.getId() == null) {
            resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            resultBean.setMsg(ResultCodeType.FAIL.getMsg());
            return resultBean;
        }

        int count = imageMapper.updateHomeImg(homeImgDb);


        if (count > 0) {
            resultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            resultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        } else {
            resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            resultBean.setMsg(ResultCodeType.FAIL.getMsg());
        }

        return resultBean;
    }
}
