/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: LoginServiceImpl
 * Author:   ayong
 * Date:     2018/8/21 11:44
 * Description: 登录实现层
 * History:
 * <author>          <time>          <version>          <desc>
 */
package com.sunA.login.service.impl;

import com.sunA.login.Bean.Login;
import com.sunA.login.mapper.LoginMapper;
import com.sunA.login.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 *
 * 〈登录实现层〉
 *
 * @author ayong
 * @create 2018/8/21
 * @since 1.0.0
 *
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;
    @Override
    public Integer login(Map<String, Object> params) {
        System.out.print("进入Service");
        int loginId=0;
        Login login = loginMapper.login(params.get("userName").toString());
        if(login != null){
            if(params.get("password").equals(login.getPassword())){
                loginId = 1;
            }else{
                loginId = 2;
            }
        }else{
            loginId = 3;
        }
        return loginId;
    }
}