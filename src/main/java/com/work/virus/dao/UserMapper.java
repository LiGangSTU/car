package com.work.virus.dao;

import com.work.virus.pojo.User;
import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(String id);

    int insert(User record);

    User selectByPrimaryKey(String id);
    User selectUserByname(String username);
    List<User> selectAll();

    int updateByPrimaryKey(User record);
}