package com.work.virus.dao;

import com.work.virus.pojo.Car;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CarMapper {
    void deleteByPrimaryKey(Integer id);
    int insert(Car record);
    Car selectByPrimaryKey(String id);
    List<Car> selectAll();
    int update(@Param("id") String id, @Param("field") String field, @Param("value") String value);
    int updateByPrimaryKey(Car record);
}