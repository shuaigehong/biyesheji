package com.bishe.service.menu;

import com.bishe.domain.Menu;
import com.feinno.framework.common.service.EntityService;

/**
 * 新增菜单信息
 * Created by Allen on 2015/4/27.
 */
public interface AddMenuService extends EntityService<Menu> {

    public void addMenu(Menu menu)throws Exception;
}
