package com.olanboa.wxhost.bean.httpreq;

import lombok.Data;
import lombok.NonNull;
import org.springframework.lang.Nullable;

import javax.validation.constraints.NotEmpty;
import java.util.List;

@Data
public class BannerDb {
    String imgPath;
    Integer bannerId;
    Integer state; //0正常 1删除

}
