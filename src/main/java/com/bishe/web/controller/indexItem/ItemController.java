package com.bishe.web.controller.indexItem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by shuaigehong on 2016/5/16.
 */
@Controller
@RequestMapping(value = "/index")
public class ItemController {

    @RequestMapping(value = "itemInfo")
    public String itemINfo(HttpServletRequest request){
        return "indexItem/indexInfo";
    }
}
