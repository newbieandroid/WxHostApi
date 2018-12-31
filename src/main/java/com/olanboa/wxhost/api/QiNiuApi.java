package com.olanboa.wxhost.api;


import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.httpresult.QiniuTokenBean;
import com.qiniu.util.Auth;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QiNiuApi {

    @Autowired
    Environment environment;

    private Auth auth = null;


    @GetMapping("/getQnToken")
    public BaseHttpResultBean<QiniuTokenBean> getQiToken(@RequestParam(name = "fileName", required = false, defaultValue = "aaa.jpg") String key) {

        BaseHttpResultBean<QiniuTokenBean> result = new BaseHttpResultBean<>();

        if (auth == null) {
            auth = Auth.create(environment.getProperty("qiniuAccessKey", String.class), environment.getProperty("qiniuSecretKey", String.class));
        }

        String token = auth.uploadToken(environment.getProperty("qiniuBucket", String.class), key);

        System.out.println("七牛上传token===>" + token);

        QiniuTokenBean qiniuTokenBean = new QiniuTokenBean();
        qiniuTokenBean.setToken(token);
        result.setResult(qiniuTokenBean);

        return result;
    }


}
