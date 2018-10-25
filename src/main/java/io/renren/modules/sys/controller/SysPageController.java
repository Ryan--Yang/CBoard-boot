package io.renren.modules.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author ryan--yang
 * @email yangrui@cetcbigdata.com
 * @date 2018-10-24 12:53
 */
@Controller
public class SysPageController {

    @RequestMapping("org/cboard/view/**")
    public String module(HttpServletRequest request){

        String url = request.getRequestURI();
        int i = url.indexOf("org");
        System.out.println("url "+request.getRequestURI());
        System.out.println("url fix "+url.substring(i,url.length()-5));
        return url.substring(i,url.length()-5);
    }

    @RequestMapping("starter/{url}.html")
    public String starter( @PathVariable("url") String url){
        return "starter/"  + url;
    }
}
