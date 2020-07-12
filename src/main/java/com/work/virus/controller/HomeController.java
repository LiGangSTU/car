package com.work.virus.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;

/**
 *  负责页面的跳转，登录注册等行为，在主页访问页面等
 */
@Controller
@RequestMapping("/home")
public class HomeController {

    @RequestMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response) {
        // 清空session
        Enumeration em = request.getSession().getAttributeNames();
        while (em.hasMoreElements()) {
            request.getSession().removeAttribute(em.nextElement().toString());
        }
        return "/login";
    }

    @RequestMapping("/index")
    public String index() {
        return "/index";
    }

    @RequestMapping("/car")
    public String city() {
        return "/car";
    }

//    @RequestMapping("/getCode")
//    @ResponseBody
//    public void getCode(HttpServletResponse response, HttpServletRequest request){
//        //验证码的验证
//        //参数解释 宽度 高度 字符数 干扰线数量
//        ValidateCode vs = new ValidateCode(120, 40, 5, 10);
//        try {
//            //通过输出流的方式 把验证码 图片发送到 前端页面的img的src中
//            vs.write(response.getOutputStream());
//            //将验证码存储到session中
//            request.getSession().setAttribute("code",vs.getCode());
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//    }
}
