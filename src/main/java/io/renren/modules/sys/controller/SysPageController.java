package io.renren.modules.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

//    @RequestMapping(value = "/", method = RequestMethod.GET)
//    public String index(){
//        return "login";
//    }

    @RequestMapping(value = "login.html", method = RequestMethod.GET)
    public String login(){
        System.out.println("************* sys login ***************");
        return "login";
    }

    @RequestMapping(value = "starter.html", method = RequestMethod.GET)
    public String starter(){
        System.out.println("************* sys starter ***************");
        return "starter";
    }

    @RequestMapping(value = "render.html", method = RequestMethod.GET)
    public String render(){
        System.out.println("************* sys render ***************");
        return "render";
    }

    @RequestMapping(value = "404.html", method = RequestMethod.GET)
    public String notFound(){
        System.out.println("************* sys 404 ***************");
        return "404";
    }
}
