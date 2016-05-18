package com.bishe.service.user.login.impl;

import com.bishe.dao.user.UserLoginCheckDao;
import com.bishe.domain.UserInfoDo;
import com.bishe.service.user.login.UserLoginService;
import com.feinno.framework.common.service.EntityServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by shuaigehong on 2016/5/15.
 */
@Service("userLoginService")
public class UserLoginServiceImpl extends EntityServiceImpl<UserInfoDo,UserLoginCheckDao> implements UserLoginService {

    @Resource
    private UserLoginCheckDao userLoginCheckDao;

    public UserInfoDo userLogin(UserInfoDo userInfoDo) throws Exception {
        return userLoginCheckDao.userLoginCheck(userInfoDo.getUserName(),userInfoDo.getPwd());
    }
}
