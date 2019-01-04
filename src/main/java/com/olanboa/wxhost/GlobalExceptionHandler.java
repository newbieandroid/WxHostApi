package com.olanboa.wxhost;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.config.ResultCodeType;
import com.qiniu.util.Json;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(value = Exception.class)
    public ModelAndView defaultErrorHandler(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        response.setContentType(MediaType.APPLICATION_JSON_UTF8_VALUE);
        System.out.println("=====================全局异常信息捕获===========开始============");
        System.out.println("请求路径:" + request.getRequestURL());
        ex.printStackTrace();
        System.out.println("=====================全局异常信息捕获=============完毕==========");
        PrintWriter out = null;
        try {

            BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();
            baseHttpResultBean.setErrorCode(ResultCodeType.OTHERSERROR.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.OTHERSERROR.getMsg());
            out = response.getWriter();
            out.print(Json.encode(baseHttpResultBean));
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (out != null) {
                out.close();
            }
        }

        return null;
    }


}
