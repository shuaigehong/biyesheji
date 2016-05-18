package com.bishe.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by shuaigehong on 2016/5/16.
 */
@Controller
@RequestMapping(value = "/welcome")
public class WelcomeController {

    @RequestMapping(value = "welcomepage")
    public String welcome(){
        return "welcome/welcomePage";
    }

    @RequestMapping(value = "nav")
    public String nav(){
        return "welcome/nav";
    }

    @RequestMapping(value = "activePage")
    public String activePage(){
        return "welcome/activePage";
    }

    @RequestMapping(value = "index")
    public String index(){
        return "welcome/index";
    }
}
