package com.bishe.dao.order;

import com.bishe.domain.OrderInfoDo;
import com.feinno.framework.common.dao.jpa.EntityJpaDao;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by shuaigehong on 2016/5/17.
 */
public interface GetUserOrdersDao extends EntityJpaDao<OrderInfoDo,Long> {
    @Query("from OrderInfoDo where userId = ?1")
    List<OrderInfoDo> getOrders(Long userId) throws Exception;
}
