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
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
    @RequestMapping("/")
    public String index(Map<String, Object> map){
        System.out.print("进入login");
        return "login";
    }
}