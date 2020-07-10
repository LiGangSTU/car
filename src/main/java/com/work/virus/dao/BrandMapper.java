package com.work.virus.dao;

import com.work.virus.pojo.Brand;
import java.util.List;

public interface BrandMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Brand record);

    Brand selectByPrimaryKey(Integer id);

    List<Brand> selectAll();

    int updateByPrimaryKey(Brand record);
}