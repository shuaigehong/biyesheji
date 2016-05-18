package com.bishe.service.user.register.impl;

import com.bishe.dao.user.UserInfoDao;
import com.bishe.domain.UserInfoDo;
import com.bishe.service.user.register.UserRegisterService;
import com.feinno.framework.common.service.EntityServiceImpl;

import org.springframework.stereotype.Service;

/**
 * 实现新增菜单接口
 * Created by Allen on 2015/4/27.
 */
@Service("userRegisterService")
public class UserRegisterServiceImpl extends EntityServiceImpl<UserInfoDo, UserInfoDao> implements UserRegisterService {


    public void userRegister(UserInfoDo userInfoDo) throws Exception {
//        if(null != userInfoDo){
//            //查询菜单名称是否已经存在
//            Menu validMenu = findMenuByNameDAO.getMenuByName(menu.getName());
//            if(null != menu && validMenu.getName().equals(menu.getName())){
//                throw new Exception("菜单名称已经存在！");
//            }
//            menu.setCreator(loginName);
//            menu.setOperator(loginName);
            super.save(userInfoDo);
//        }
    }
}
