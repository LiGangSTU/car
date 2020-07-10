package com.work.virus.dao;

import com.work.virus.pojo.Change;
import java.util.List;

public interface ChangeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Change record);

    Change selectByPrimaryKey(Integer id);

    List<Change> selectAll();

    int updateByPrimaryKey(Change record);
}