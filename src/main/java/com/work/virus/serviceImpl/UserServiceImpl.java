package com.work.virus.serviceImpl;

import com.work.virus.dao.UserMapper;
import com.work.virus.pojo.Result;
import com.work.virus.pojo.User;
import com.work.virus.service.UserService;
import com.work.virus.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @Author LiGang
 * @Date 2020/2/26 17:18
 * @Version 1.0
 */
//第一个是专门服务层的注解，第二个是管理事务的注解
@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;
    public Result login(String username, String password,  HttpServletRequest request) {
        Result result = new Result();
        // 获取验证码
        String codeValue = (String) request.getSession().getAttribute("code");
        // 判断验证码，符合再判断用户
        // 忽略大小写匹配

            // 判断用户和加密后的密码
            User user = userMapper.selectUserByname(username);
            // 与加密后的密码对比
            if (user == null  ){
                result.setMessage("用户名不存在，请注册");
                result.setStatus("500");
            }else if(!user.getPassword().equals(MD5Util.Encryption(password,username))){
                result.setMessage("密码不正确");
                result.setStatus("500");
            } else{
                HttpSession session = request.getSession();
                //在session存储用户
                session.setAttribute("user",user);
                result.setStatus("200");
                result.setMessage("success");
            }

        return result;
    }

}
