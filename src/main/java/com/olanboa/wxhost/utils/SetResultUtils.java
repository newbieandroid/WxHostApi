package com.olanboa.wxhost.utils;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.httpreq.AddBannerReq;
import com.olanboa.wxhost.config.ResultCodeType;

import java.util.List;


public class SetResultUtils {


    public static <T> BaseHttpResultBean<T> checkResult(T data) {

        BaseHttpResultBean<T> resultBean = new BaseHttpResultBean();

        resultBean.setResult(data);

        if (data == null) {
            resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
            resultBean.setMsg(ResultCodeType.FAIL.getMsg());
            return resultBean;
        }


        if (data instanceof String) {

            if (data == null || ((String) data).isEmpty()) {
                resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
                resultBean.setMsg(ResultCodeType.FAIL.getMsg());
            } else {
                resultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
                resultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
            }

        } else if (data instanceof List) {

            if (data == null || ((List) data).size() == 0) {
                resultBean.setErrorCode(ResultCodeType.NOTFIND.getErrorCode());
                resultBean.setMsg(ResultCodeType.NOTFIND.getMsg());
            } else {
                resultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
                resultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
            }

        } else if (data instanceof AddBannerReq) {


            if (data != null && ((AddBannerReq) data).getImgPath() != null && ((AddBannerReq) data).getImgPath().size() > 0) {


                resultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
                resultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
            } else {
                resultBean.setErrorCode(ResultCodeType.FAIL.getErrorCode());
                resultBean.setMsg(ResultCodeType.FAIL.getMsg());
            }


        }

        return resultBean;
    }

}
