package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.UserDb;
import com.olanboa.wxhost.bean.UserTypeDb;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserMapper {


    List<UserTypeDb> getUserType();

    int addShopUserReq(UserDb addShopUserReq);

    UserDb getUserItem(@Param("id") Integer userId, @Param("state") Integer state);

    int updateUserInfo(UserDb userDb);

    List<UserDb> getUserList(@Param("shopId") Integer shopId ,@Param("userId") Integer reqUserId);


}
