package com.bishe.service.userOrder;

import com.bishe.domain.OrderInfoDo;
import com.feinno.framework.common.service.EntityService;

/**
 * Created by shuaigehong on 2016/5/17.
 */
public interface AddUserOrderService extends EntityService<OrderInfoDo> {

    void addOrder(OrderInfoDo orderInfoDo) throws Exception;
}
