/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: LoginController
 * Author:   ayong
 * Date:     2018/8/21 11:35
 * Description: 用户登录
 * History:
 * <author>          <time>          <version>          <desc>
 */
package com.sunA.login.controller;

import com.sunA.core.controller.BaseController;
import com.sunA.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * 〈用户登录〉
 *
 * @author ayong
 * @create 2018/8/21
 * @since 1.0.0
 */
@Controller
public class LoginController extends BaseController {
    /**
     *
     */
    @Autowired
    protected LoginService loginService;
    @RequestMapping("/")
    public String index(){

        request.getParameter("");
        System.out.print("进入index");
        return "login";
    }

    @RequestMapping("/login")
    //@ResponseBody
    public int login(
            String userName,
            String password
    ){
        System.out.print("进入login");
        Map<String,Object> params = new HashMap<>();
        params.put("userName",userName);
        params.put("password",password);
        int loginId=loginService.login(params);
        return loginId;
    }


    @RequestMapping("/successLogin")
    public String successLogin(
    ){
        return "index";
    }

}