package com.bishe.web.controller.user;

import com.bishe.domain.UserInfoDo;
import com.bishe.service.user.login.UserLoginService;
import com.bishe.service.user.register.UserRegisterService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by shuaigehong on 2016/5/12.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    @Resource
    private UserRegisterService userRegisterService;

    @Resource
    private UserLoginService userLoginService;

    @RequestMapping(value = "openLoginPage")
    public String openLogin(){
        return "user/login/login";
    }


    @RequestMapping(value = "openRegisterPage")
    public String openRegister(){
        return "user/register/register";
    }


    @RequestMapping(value = "register")
    public String register(UserInfoDo userInfoDo){
        try{
            System.out.println("email:"+userInfoDo.getEmail()+"  pwd:"+userInfoDo.getPwd());
            userRegisterService.userRegister(userInfoDo);
        }catch (Exception e){
            System.out.println("error!");
        }
        return "user/login/login";
    }

    @RequestMapping(value = "login")
    public String login(HttpServletRequest request,UserInfoDo userInfoDo){
        try{
            UserInfoDo user = userLoginService.userLogin(userInfoDo);
            if (null == user){
                request.setAttribute("result","用户名或密码错误！");
            }
            System.out.println(user.toString());
            request.setAttribute("flag","yes");
            request.getSession().setAttribute("user",user);
        }catch (Exception e){
            request.setAttribute("flag","error");
            return "user/login/login";
        }
        return "welcome/welcomePage";
    }

    @RequestMapping(value = "loginOut")
    public String loginOut(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "welcome/welcomePage";
    }
}
