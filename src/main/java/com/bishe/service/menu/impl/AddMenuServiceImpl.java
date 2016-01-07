package com.bishe.service.menu.impl;

import com.bishe.dao.menu.MenuDAO;
import com.bishe.domain.Menu;
import com.bishe.service.menu.AddMenuService;
import com.feinno.framework.common.service.EntityServiceImpl;

import org.springframework.stereotype.Service;

/**
 * 实现新增菜单接口
 * Created by Allen on 2015/4/27.
 */
@Service("addMenuService")
public class AddMenuServiceImpl extends EntityServiceImpl<Menu, MenuDAO> implements AddMenuService {

//    @Resource
//    private FindMenuByNameDAO findMenuByNameDAO;

    public void addMenu(Menu menu) throws Exception {
//        if(null != menu){
//            //查询菜单名称是否已经存在
//            Menu validMenu = findMenuByNameDAO.getMenuByName(menu.getName());
//            if(null != menu && validMenu.getName().equals(menu.getName())){
//                throw new Exception("菜单名称已经存在！");
//            }
//            menu.setCreator(loginName);
//            menu.setOperator(loginName);
            super.save(menu);
//        }
    }
}
