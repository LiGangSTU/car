package com.work.virus.controller;

import com.work.virus.dao.CarMapper;
import com.work.virus.pojo.Car;
import com.work.virus.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

/**
 * @Author LiGang
 * @Date 2020/7/8 16:04
 * @Version 1.0
 */
@Controller
@RequestMapping("/car")
public class CarController {
    @Autowired
    private  CarMapper carMapper;
    @RequestMapping("/car")
    public String index(){
        return "car";
    }

    @RequestMapping("/selectAll")
    @ResponseBody
    public Result selectAll(){
        List<Car> list = carMapper.selectAll();
        System.out.println(list);
        Result res =  new Result();
        if(list.size()>0)
        {
            res.setItem(list);
            res.setMessage("success");
            res.setTotal(list.size());
        }
        return res;
    }

    @RequestMapping("/update")
    @ResponseBody
    public  Result update(String id,String field,String value, HttpServletRequest request){
        //把前端js 单元格编辑 ajax 传过来的属性值 id field value
        System.out.println("id"+id+"filed"+field+"value"+value);

        Result result = new Result();
        try {
            //将id field value 传递给mapper 中对应的方法
            int zhi = carMapper.update(id, field, value);
            System.out.println(zhi);
            if(zhi == 0){
                result.setMessage("error");
            }
            else{
                result.setMessage("success");
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setMessage("error");
        }
        return result;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Result add(Car car,HttpServletRequest request){
        System.out.println(car.getBrand());
        Result result = new Result();
        String id = UUID.randomUUID().toString();
        try {
            car.setId((int)(Math.random() *10000)-1);
            car.setOpreator("admin");
            int insert = carMapper.insert(car);
            if(insert != 0){
                System.out.println("success");
                result.setMessage("成功");
            }else{
                result.setMessage("失败");
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println(car.getBrand());
            result.setMessage("添加失败");
            result.setStatus("500");
        }
        return result;
    }
    @RequestMapping("/deleteA")
    @ResponseBody
    public  Result delete(int[] ids,HttpServletRequest request){
        Result  result = new Result();
        System.out.println("传过来的数组值是"+ Arrays.toString(ids));
        try{
            //carService.del(ids);
            for (int i=0;i<ids.length; i++){
                carMapper.deleteByPrimaryKey(ids[i]);
            }
            // 删除成功
            result.setMessage("success");
            result.setStatus("200");
        }
        catch(Exception e){
            result.setMessage("数据操作异常");
            result.setStatus("500");
            // z打印一下异常
            e.printStackTrace();

        }
        return result;
    }
    @RequestMapping("/delete")
    @ResponseBody
    public  Result delete(Integer id,HttpServletRequest request){
        Result  result = new Result();
        System.out.println("传过来的id值是"+id);
        try{
            carMapper.deleteByPrimaryKey(id);
            // 删除成功
            result.setMessage("success");
            result.setStatus("200");
        }
        catch(Exception e){
            result.setMessage("数据操作异常");
            result.setStatus("500");
            // z打印一下异常
            e.printStackTrace();
        }
        return result;
    }
}
