package com.bishe.service.userOrder.impl;

import com.bishe.dao.order.GetUserOrdersDao;
import com.bishe.domain.OrderInfoDo;
import com.bishe.service.userOrder.GetOrdersService;
import com.feinno.framework.common.service.EntityServiceImpl;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by shuaigehong on 2016/5/17.
 */
@Service("getOrdersService")
public class GetOrdersServiceImpl extends EntityServiceImpl<OrderInfoDo,GetUserOrdersDao> implements GetOrdersService {

    @Resource
    private GetUserOrdersDao getUserOrdersDao;

    public List<OrderInfoDo> getorders(Long userId) throws Exception {
        return getUserOrdersDao.getOrders(userId);
    }
}
