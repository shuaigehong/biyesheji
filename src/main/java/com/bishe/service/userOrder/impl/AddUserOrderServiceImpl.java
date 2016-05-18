package com.bishe.service.userOrder.impl;

import com.bishe.dao.order.OrderInfoDao;
import com.bishe.domain.OrderInfoDo;
import com.bishe.service.userOrder.AddUserOrderService;
import com.feinno.framework.common.service.EntityServiceImpl;
import org.springframework.stereotype.Service;

/**
 * Created by shuaigehong on 2016/5/17.
 */
@Service("addUserOrderService")
public class AddUserOrderServiceImpl extends EntityServiceImpl<OrderInfoDo,OrderInfoDao> implements AddUserOrderService {


    public void addOrder(OrderInfoDo orderInfoDo) throws Exception {
        super.save(orderInfoDo);
    }
}
