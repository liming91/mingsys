package com.ming;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value = "com.ming.mapper")
public class MingSysApplication {

    public static void main(String[] args) {
        SpringApplication.run(MingSysApplication.class, args);
    }

}
