package com.bishe.dao.user.impl;

import com.bishe.domain.UserInfoDo;
import com.feinno.framework.common.dao.jpa.JapDynamicQueryDao;
import com.feinno.framework.common.dao.support.PageInfo;
import com.bishe.dao.FindPageByWhereDAO;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * 实现分页查询菜单信息接口
 * Created by Allen on 2015/4/28.
 */
@Service("findMenuPageByWhereDAO")
public class FindMenuPageByWhereDAOImpl extends JapDynamicQueryDao<UserInfoDo> implements FindPageByWhereDAO {
    public PageInfo findPageByWhere(PageInfo pageInfo, Map<String, String> paramsMap, Map<String, Boolean> sortMap) {
        PageInfo<UserInfoDo> menuPageInfo = new PageInfo<UserInfoDo>();
        menuPageInfo.setCurrentPage(pageInfo.getCurrentPage());
        menuPageInfo.setCountOfCurrentPage(pageInfo.getCountOfCurrentPage());

        StringBuilder sql = new StringBuilder("FROM Menu where 1=1 ");
        String name = paramsMap.get("name");

        List<Object> param = new ArrayList<Object>();
        if(!StringUtils.isEmpty(name)){
            sql.append(" and name like ? ");
            param.add("%"+name+"%");
        }
        sql.append(" order by ");
        for (Iterator it = sortMap.keySet().iterator(); it.hasNext();){
            String key = it.next().toString();
            sql.append(key);
            sql.append(" ");
            sql.append(sortMap.get(key) ? "asc" : "desc");
        }
        menuPageInfo = super.pagedQueryByJpql(menuPageInfo, sql.toString(), param.toArray());
        return menuPageInfo;
    }
}
