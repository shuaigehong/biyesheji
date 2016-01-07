package com.bishe.dao.menu;

import com.bishe.domain.Menu;
import com.feinno.framework.common.dao.jpa.EntityJpaDao;
import org.springframework.data.jpa.repository.Query;

/**
 * 通过名称查询菜单信息
 * Created by Allen on 2015/4/28.
 */
public interface FindMenuByNameDAO extends EntityJpaDao<Menu,Long> {
    @Query("from Menu where name = ?1")
    public Menu getMenuByName(String name);
}
