package com.work.virus.util;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * @Author LiGang
 * @Date 2020/2/27 8:13
 * @Version 1.0
 */
public class MD5Util {
    public static String Encryption(String password,String username){
        //参数1 用来加密的字符串 参数2 加盐的参数
        Md5Hash md5Hash = new Md5Hash(password,username,100);
        String pasStr = md5Hash.toString();
        return pasStr;
    }
}
