package com.bishe.web.controller.menu;

import com.bishe.domain.Menu;
import com.bishe.service.menu.AddMenuService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * 新增菜单
 * Created by Allen on 2015/4/28.
 */
@Controller
@RequestMapping(value = "/addMenu")
public class AddMenuController {

    @Resource
    private AddMenuService addMenuService;

    /**
     * 打开新增菜单页面
     * @return
     */
    @RequestMapping(value = "openAddMenu")
    public String openAddMenu(){
        System.out.println("进入成功");
        return "menu/addMenu";
    }

    @RequestMapping(value = "menuAdd")
    public String addMenu(HttpServletRequest request, Menu menu){
        try{
            if(null != menu) {
                System.out.println("得到的参数:"+menu.getName()+"  "+menu.getRemark());
                addMenuService.addMenu(menu);
            }
            return "welcome";
        }catch(Exception e){
            e.printStackTrace();
            return "error";
        }
    }
}
