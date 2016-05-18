package com.bishe.web.controller.user.register;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by shuaigehong on 2016/5/13.
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController {


    @RequestMapping(value = "openPage")
    public String open(){
        return "register/register";
    }
}
