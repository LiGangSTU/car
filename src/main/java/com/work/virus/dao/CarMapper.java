package com.work.virus.dao;

import com.work.virus.pojo.Car;
import org.apache.ibatis.annotations.Param;

import java.util.Date;
import java.util.List;

public interface CarMapper {
    int insert(Car record);
    List<Car> selectAll();
    int deleteByPrimaryKey(Integer id);
    Car selectByPrimaryKey(String id);
    int update(@Param("id") String id, @Param("field") String field, @Param("value") String value);
    int updateByPrimaryKey(Car record);
    List<Car> selectBybrand(@Param("brand") String brand, @Param("page") Integer page, @Param("pageTotal") Integer pageTotal);
    List<Car> selectByColor(@Param("color") String color, @Param("page") Integer page, @Param("pageTotal") Integer pageTotal);
    List<Car> selectByTime(@Param("date1") Date date1, @Param("date2") Date date2, @Param("page") Integer page, @Param("pageTotal") Integer pageTotal);
    List<Car> selectByColorBrand(@Param("brand") String brand, @Param("color") String color,@Param("page") Integer page, @Param("pageTotal") Integer pageTotal);
    List<Car> selectByBrandTime(@Param("brand") String brand,@Param("date1") Date date1, @Param("date2") Date date2, @Param("page") Integer page, @Param("pageTotal") Integer pageTotal);
    List<Car> selectByColorTime(@Param("color") String color,@Param("date1") Date date1, @Param("date2") Date date2, @Param("page") Integer page, @Param("pageTotal") Integer pageTotal);

    List<Car> queryByTarget(@Param("date1") Date date1, @Param("date2") Date date2,@Param("brand") String brand, @Param("color") String color,@Param("page") Integer page, @Param("pageTotal") Integer pageTotal);

}