package org.cboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }

    @RequestMapping(value = "/starter", method = RequestMethod.GET)
    public String starter() {
        return "starter";
    }

    @RequestMapping(value = "/render", method = RequestMethod.GET)
    public String rendhtml() {
        return "render";
    }

    private String getPrincipal(){
      return "";
    }

}