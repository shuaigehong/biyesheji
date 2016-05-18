package com.bishe.service.userOrder;

import com.bishe.domain.OrderInfoDo;
import com.feinno.framework.common.service.EntityService;

import java.util.List;

/**
 * Created by shuaigehong on 2016/5/17.
 */
public interface GetOrdersService extends EntityService<OrderInfoDo> {

    List<OrderInfoDo> getorders(Long userId) throws Exception;
}
