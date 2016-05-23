package com.bishe.utils.userUtils;

import com.bishe.domain.UserInfoDo;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by shuaigehong on 2016/5/17.
 */
public class UserInfoUtils {

    public static UserInfoDo getUserInfo(HttpServletRequest request){
        Object o = request.getSession().getAttribute("user");
        return (UserInfoDo)o;
    }
}
