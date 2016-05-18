package com.bishe.dao.user;

import com.bishe.domain.UserInfoDo;
import com.feinno.framework.common.dao.jpa.EntityJpaDao;

/**
 * 用于不需要查询的service用
 * Created by Allen on 2015/4/28.
 */
public interface UserInfoDao extends EntityJpaDao<UserInfoDo,Long> {

}
