package com.bishe.service.user.login;

import com.bishe.domain.UserInfoDo;
import com.feinno.framework.common.service.EntityService;

/**
 * 用户登录
 * Created by shuaigehong on 2016/5/15.
 */
public interface UserLoginService extends EntityService<UserInfoDo> {

    UserInfoDo userLogin(UserInfoDo userInfoDo) throws Exception;
}
