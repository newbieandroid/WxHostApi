package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.httpreq.AddMsgReq;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.AddMsgMapper;
import com.olanboa.wxhost.myexception.CustomExp;
import com.qiniu.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/message")
public class MessageApi {

    @Autowired
    AddMsgMapper addMsgMapper;

    @PostMapping("/addMsg")
    @Transactional(rollbackFor = Exception.class)
    public BaseHttpResultBean addMsg(@RequestBody AddMsgReq addMsgReq) throws CustomExp {


        if (addMsgReq == null
                || StringUtils.isNullOrEmpty(addMsgReq.getName())
                || StringUtils.isNullOrEmpty(addMsgReq.getAddress())
                || StringUtils.isNullOrEmpty(addMsgReq.getTel())
                || StringUtils.isNullOrEmpty(addMsgReq.getDes())
        ) {
            throw new CustomExp("缺少必要参数或者内容不能为空");
        }
        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        addMsgMapper.addMsg(addMsgReq);

        if (addMsgReq.getId() > 0) {
            baseHttpResultBean.setMsg("留言成功");
            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
        } else {
            throw new CustomExp("留言失败");
        }
        return baseHttpResultBean;
    }
}
