/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: LoginMapper
 * Author:   ayong
 * Date:     2018/8/21 11:43
 * Description: 登录Mapper
 * History:
 * <author>          <time>          <version>          <desc>
 */
package com.sunA.login.mapper;

import com.sunA.login.Bean.Login;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 *
 * 〈登录Mapper〉
 *
 * @author ayong
 * @create 2018/8/21
 * @since 1.0.0
 */
@Mapper
public interface LoginMapper {

     Login login(@Param("userName")String userName) ;
}