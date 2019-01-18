package com.olanboa.wxhost.mpper;

import com.olanboa.wxhost.bean.ShopImgDb;
import com.olanboa.wxhost.bean.ShopInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ShopMapper {
    int addShopMapper(ShopInfo data);

    int updateShop(ShopInfo shopInfo);

    ShopInfo getShopInfo(@Param("shopId") Integer shopId);


    List<ShopInfo> getShopList(@Param("province") String province, @Param("shopId") Integer shopId);

    int addShopImg(Integer shopId, List<ShopImgDb> shopImgDbList);

    List<ShopImgDb> getShopImgs(Integer shopId);
}
