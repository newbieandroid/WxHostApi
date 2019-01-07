package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.httpreq.AddHomeImgReq;
import com.olanboa.wxhost.bean.httpreq.HomeImgDb;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.ImageMapper;
import com.olanboa.wxhost.myexception.CustomExp;
import com.olanboa.wxhost.utils.SetResultUtils;
import com.qiniu.util.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
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
    @Transactional(rollbackFor = Exception.class)
    BaseHttpResultBean<String> addHomeImg(@RequestBody AddHomeImgReq datas) throws CustomExp {

        int count = imageMapper.addHomeImg(datas.getImgs());


        BaseHttpResultBean resultBean = new BaseHttpResultBean<>();

        if (count > 0) {
            resultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            resultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        } else {

            throw new CustomExp("添加图片失败");
        }

        return resultBean;
    }

    @PostMapping("/updateHomeImg")
    @Transactional(rollbackFor = Exception.class)
    BaseHttpResultBean updateHomeImg(@RequestBody HomeImgDb homeImgDb) throws CustomExp {

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

            throw new CustomExp("添加图片失败");
        }

        return resultBean;
    }
}
