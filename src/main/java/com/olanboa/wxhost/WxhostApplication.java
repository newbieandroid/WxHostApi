package com.olanboa.wxhost;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan("com.olanboa.wxhost.mpper")
@EnableTransactionManagement
public class WxhostApplication {

    public static void main(String[] args) {
        SpringApplication.run(WxhostApplication.class, args);

    }

}

