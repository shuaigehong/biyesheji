package com.bishe.service.user.register;

import com.bishe.domain.UserInfoDo;
import com.feinno.framework.common.service.EntityService;

/**
 * 用户注册
 * Created by lihongzhang on 2015/4/27.
 */
public interface UserRegisterService extends EntityService<UserInfoDo> {

    void userRegister(UserInfoDo userInfoDo)throws Exception;
}

