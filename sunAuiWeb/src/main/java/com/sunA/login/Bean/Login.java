/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: Login
 * Author:   ayong
 * Date:     2018/8/21 13:04
 * Description: 登录实体类
 * History:
 * <author>          <time>          <version>          <desc>
 */
package com.sunA.login.Bean;

/**
 *
 * 〈登录实体类〉
 *
 * @author ayong
 * @create 2018/8/21
 * @since 1.0.0
 */
public class Login {

        private Integer sid;
        private String userName;
        private String password;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}