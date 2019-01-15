package com.olanboa.wxhost.api;

import com.olanboa.wxhost.base.BaseHttpResultBean;
import com.olanboa.wxhost.bean.ExampleDb;
import com.olanboa.wxhost.bean.ShopInfo;
import com.olanboa.wxhost.bean.UserDb;
import com.olanboa.wxhost.config.ResultCodeType;
import com.olanboa.wxhost.mpper.ExampleMapper;
import com.olanboa.wxhost.mpper.ShopMapper;
import com.olanboa.wxhost.mpper.UserMapper;
import com.olanboa.wxhost.myexception.CustomExp;
import com.olanboa.wxhost.utils.SetResultUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

@RestController
public class ExampleApi {

    @Autowired
    ShopMapper shopMapper;
    @Autowired
    ExampleMapper exampleMapper;

    @Autowired
    UserMapper userMapper;


    @PostMapping("/addExample")
    @Transactional
    public BaseHttpResultBean addExample(@RequestBody ExampleDb exampleDb) throws Exception {


        UserDb userDb = userMapper.getUserItem(exampleDb.getUserId(), null);

        if (userDb == null || userDb.getUserTypeId() == 2) {
            throw new CustomExp("当前用户不存在或者类型不匹配");
        }


        ShopInfo shopInfo = shopMapper.getShopInfo(exampleDb.getShopId());


        if (shopInfo == null) {

            throw new CustomExp("当前店铺不存在");
        }

        BaseHttpResultBean baseHttpResultBean = new BaseHttpResultBean();

        exampleMapper.addExample(exampleDb);

        if (exampleDb.getId() > 0) {
            baseHttpResultBean.setErrorCode(ResultCodeType.SUCCESS.getErrorCode());
            baseHttpResultBean.setMsg(ResultCodeType.SUCCESS.getMsg());
        } else {
            throw new CustomExp("添加案例失败");
        }

        return baseHttpResultBean;
    }

    @GetMapping("/getExampleList")
    @Transactional
    public BaseHttpResultBean getExampleList(@RequestParam("userId") Integer userId) throws Exception {

        UserDb userDb = userMapper.getUserItem(userId, null);

        if (userDb == null) {
            throw new CustomExp("当前用户不存在");
        }

        return SetResultUtils.checkResult(exampleMapper.getExampleList());

    }
}
