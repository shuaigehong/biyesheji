package com.bishe.web.controller.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 发出订购信息的controller
 * Created by shuaigehong on 2016/5/12.
 */
@Controller
@RequestMapping(value = "/order")
public class MakeOrderController {

    @RequestMapping(value = "openPage")
    public String openAddOrder(){
        return "order/makeOrderPage";
    }
}
