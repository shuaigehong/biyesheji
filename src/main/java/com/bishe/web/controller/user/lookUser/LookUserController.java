package com.bishe.web.controller.user.lookUser;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by shuaigehong on 2016/5/17.
 */
@Controller
@RequestMapping(value = "/lookUser")
public class LookUserController {

    @RequestMapping(value = "openPage")
    public String openPage(){
        return "user/lookUser/lookUserInfo";
    }
}
