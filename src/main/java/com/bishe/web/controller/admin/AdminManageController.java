package com.bishe.web.controller.admin;

import com.bishe.domain.AdminDo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by shuaigehong on 2016/5/23.
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminManageController {

    @RequestMapping(value = "login")
    public String login(HttpServletRequest request,AdminDo admin){
        System.out.println(admin.toString());
        request.getSession().setAttribute("admin",admin);
        return "admin/index";
    }

    @RequestMapping(value = "open/login")
    public String open(){
        return "admin/login";
    }
}
