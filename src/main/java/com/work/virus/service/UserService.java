package com.work.virus.service;

import com.work.virus.pojo.Result;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author LiGang
 * @Date 2020/2/26 17:12
 * @Version 1.0
 */
public interface UserService {
    //图形验证码
    Result login(String username, String password, HttpServletRequest request);

}
