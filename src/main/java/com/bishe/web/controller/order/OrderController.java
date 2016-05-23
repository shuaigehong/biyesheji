package com.bishe.web.controller.order;

import com.bishe.domain.OrderInfoDo;
import com.bishe.service.userOrder.AddUserOrderService;
import com.bishe.service.userOrder.GetOrdersService;
import com.bishe.utils.userUtils.UserInfoUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 发布需求的controller
 * Created by shuaigehong on 2016/5/12.
 */
@Controller
@RequestMapping(value = "/order")
public class OrderController {

    @Resource
    private AddUserOrderService addUserOrderService;

    @Resource
    private GetOrdersService getOrdersService;

    @RequestMapping(value = "openPage")
    public String openAddOrder(){
        return "order/makeOrderPage";
    }

    @RequestMapping(value = "addOrder")
    public String addOrder(HttpServletRequest request,OrderInfoDo orderInfoDo){
        try{
            System.out.println(orderInfoDo.toString());
            orderInfoDo.setUserId(UserInfoUtils.getUserInfo(request).getId());
            addUserOrderService.addOrder(orderInfoDo);
            request.setAttribute("flag","yes");
        }catch (Exception e){
            request.setAttribute("flag","error");
        }finally {
            return "order/makeOrderPage";
        }

    }

    @RequestMapping(value = "getUserOrders")
    public String getOrders(@RequestParam(value = "userId",required = true) Long userId,
                            HttpServletRequest request){
        try{
            System.out.println("userId:"+userId);
            List<OrderInfoDo> orderInfoDos = getOrdersService.getorders(userId);
            request.setAttribute("result",orderInfoDos);
        }catch (Exception e){
            request.setAttribute("flag","error");
        }finally {
            return "order/myOrders";
        }
    }

    @RequestMapping(value = "orderInfo")
    public String orderInfo(){
        return "order/orderInfo";
    }
}
