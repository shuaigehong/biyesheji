package com.bishe.dao.user;

import com.bishe.domain.UserInfoDo;
import com.feinno.framework.common.dao.jpa.EntityJpaDao;
import org.springframework.data.jpa.repository.Query;

/**
 * 通过名称查询菜单信息
 * Created by Allen on 2015/4/28.
 */
public interface UserLoginCheckDao extends EntityJpaDao<UserInfoDo,Long> {
    @Query("FROM UserInfoDo WHERE userName =?1 AND pwd =?2")
    UserInfoDo userLoginCheck(String userName,String pwd) throws Exception;
}
