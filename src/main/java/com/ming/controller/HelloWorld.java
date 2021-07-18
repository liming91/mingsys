package com.ming.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloWorld {
    Logger log = LoggerFactory.getLogger(HelloWorld.class);

    @RequestMapping("/hello")
    @ResponseBody
    public String hello() {
        log.info("hello world");
        log.debug("hello world");
        return "hello world";
    }
}
