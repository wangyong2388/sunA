/**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: BaseController
 * Author:   ayong
 * Date:     2018/8/21 8:16
 * Description:
 * History:
 * <author>          <time>          <version>          <desc>
 */
package com.sunA.core.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * 〈〉
 *
 * @author ayong
 * @create 2018/8/21
 * @since 1.0.0
 */
public class BaseController {

    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected HttpSession session;
}