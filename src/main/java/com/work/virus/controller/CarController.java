package com.work.virus.controller;
import com.work.virus.dao.BrandMapper;
import com.work.virus.dao.CarMapper;
import com.work.virus.dao.ChangeMapper;
import com.work.virus.pojo.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @Author LiGang
 * @Date 2020/7/8 16:04
 * @Version 1.0
 */
@Controller
@RequestMapping("/car")
public class CarController {
    @Autowired
    private CarMapper carMapper;
    @Autowired
    private ChangeMapper changeMapper;
    @Autowired
    private BrandMapper brandMapper;
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
    private Calendar calendar= Calendar.getInstance();
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
        Change change = new Change();
        try {
            if(list.size()>0)
            {
                res.setItem(list);
                res.setMessage("success");
                res.setTotal(list.size());
                change.setId((int)(Math.random() *1000000)-1);
                change.setOpreator("amdin");
                change.setoType("search");
                Date date = sdf.parse(sdf.format(calendar.getTime()));
                change.setChangeTime(date);
                System.out.println(change.getChangeTime());
                changeMapper.insert(change);
            }
        }catch (Exception e){
            e.printStackTrace();
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
                Change change = new Change();
                change.setId((int)(Math.random() *1000000)-1);
                change.setOpreator("amdin");
                change.setoType("update");
                Date date = sdf.parse(sdf.format(calendar.getTime()));
                change.setChangeTime(date);
                System.out.println(change.getChangeTime());
                changeMapper.insert(change);
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setMessage("error");
        }
        return result;
    }
//method = RequestMethod.POST,produces="application/json;charset=UTF-8"
    @RequestMapping("/add")
    @ResponseBody
    public Result add(String brand,String color,String seatnum ,String oilconsumption ,String birthtime,
                      String rentnum ,String carImg,HttpServletRequest request){
        Car car = new Car();
        System.out.println(brand+" "+color+" "+seatnum+" "+oilconsumption+" "+birthtime+" "+rentnum);
        Result result = new Result();
        //String id = UUID.randomUUID().toString();
        Calendar calendar= Calendar.getInstance();
        SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
        Date date = new Date();
        Brand brand1 = brandMapper.selectByPrimaryKey(Integer.parseInt(brand));
        String brandname = brand1.getBrandName();
        System.out.println(brandname);
        System.out.println(sdf1.format(calendar.getTime()));
        try {
            Date date2 = sdf1.parse(birthtime);
            //System.out.println(car.getBirthtime());
            System.out.println(date2);
            date = sdf.parse(sdf.format(calendar.getTime()));
            car.setId((int)(Math.random() *10000)-1);
            car.setBrand(brandname);
            car.setColor(color);
            car.setSeatnum(Integer.parseInt(seatnum));
            car.setOilconsumption(Float.parseFloat(oilconsumption));
            car.setBirthtime(date2);
            car.setRentnum(Integer.parseInt(rentnum));
            car.setCarImg(carImg);
            car.setOpreator("admin");
            car.setCreatetime(date);
            int insert = carMapper.insert(car);
            if(insert != 0){
                System.out.println("success");
                result.setMessage("成功");
                Change change = new Change();
                change.setId((int)(Math.random() *1000000)-1);
                change.setOpreator("amdin");
                change.setoType("add");
                Date date3 = sdf.parse(sdf.format(calendar.getTime()));
                change.setChangeTime(date3);
                System.out.println(change.getChangeTime());
                changeMapper.insert(change);
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
            Change change = new Change();
            change.setId((int)(Math.random() *1000000)-1);
            change.setOpreator("amdin");
            change.setoType("deleteAll");
            Date date = sdf.parse(sdf.format(calendar.getTime()));
            change.setChangeTime(date);
            System.out.println(change.getChangeTime());
            changeMapper.insert(change);
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
    @RequestMapping("/queryByBrand")
    @ResponseBody
    public Result queryByBrand(String brand,Integer page,Integer limit,HttpServletRequest request){
        System.out.println(brand+"--"+page+"--"+limit);
        //需要一个分页的类 Page 通过分页的算法算出从第几条开始，他就往后查多少条
        //pageTotal
        Page page1 = new Page(page,limit);
        Result result = new Result();
        try {
            //需要根据uderid查询的方法 根据userid查询符合条件的结果集
            List<Car> chaxun = carMapper.selectBybrand(brand, page1.getPage(), page1.getPageTotal());
            if(chaxun == null){
                result.setMessage("没有数据");
                result.setStatus("200");

            }else{
                System.out.println(chaxun);
                result.setMessage("success");
                result.setItem(chaxun);
                result.setTotal(chaxun.size());
                Change change = new Change();
                change.setId((int)(Math.random() *1000000)-1);
                change.setOpreator("amdin");
                change.setoType("search");
                Date date = sdf.parse(sdf.format(calendar.getTime()));
                change.setChangeTime(date);
                System.out.println(change.getChangeTime());
                changeMapper.insert(change);
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setMessage("error");
        }
        return result;
    }
    @RequestMapping("/queryByColor")
    @ResponseBody
    public Result queryByColor(String color,Integer page,Integer limit,HttpServletRequest request){
        System.out.println(color+"--"+page+"--"+limit);
        //需要一个分页的类 Page 通过分页的算法算出从第几条开始，他就往后查多少条
        //pageTotal
        Page page1 = new Page(page,limit);
        Result result = new Result();
        try {
            //需要根据uderid查询的方法 根据userid查询符合条件的结果集
            List<Car> chaxun = carMapper.selectByColor(color, page1.getPage(), page1.getPageTotal());
            if(chaxun == null){
                result.setMessage("没有数据");
                result.setStatus("200");
            }else{
                //System.out.println(chaxun);
                result.setMessage("success");
                result.setItem(chaxun);
                result.setTotal(chaxun.size());
                Change change = new Change();
                change.setId((int)(Math.random() *1000000)-1);
                change.setOpreator("amdin");
                change.setoType("search");
                Date date = sdf.parse(sdf.format(calendar.getTime()));
                change.setChangeTime(date);
                System.out.println(change.getChangeTime());
                changeMapper.insert(change);
            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setMessage("error");
        }
        return result;
    }
    @RequestMapping("/queryByTime")
    @ResponseBody
    public Result queryByTime(String start_time,String end_time,Integer page,Integer limit,HttpServletRequest request){
        System.out.println(start_time+" "+end_time+" "+page);
        //需要一个分页的类 Page 通过分页的算法算出从第几条开始，他就往后查多少条 pageTotal
        Page page1 = new Page(page,limit);
        Result result = new Result();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date1 = simpleDateFormat.parse(start_time);
            Date date2 = simpleDateFormat.parse(end_time);
            //需要根据uderid查询的方法 根据userid查询符合条件的结果集
            List<Car> chaxun = carMapper.selectByTime(date1,date2, page1.getPage(), page1.getPageTotal());
            if(chaxun == null){
                result.setMessage("没有数据");
                result.setStatus("200");
            }else{
                //System.out.println(chaxun);
                Change change = new Change();
                change.setId((int)(Math.random() *1000000)-1);
                change.setOpreator("amdin");
                change.setoType("search");
                Date date = sdf.parse(sdf.format(calendar.getTime()));
                change.setChangeTime(date);
                System.out.println(change.getChangeTime());
                changeMapper.insert(change);
                result.setMessage("success");
                result.setItem(chaxun);
                result.setTotal(chaxun.size());

            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setMessage("error");
        }
        return result;
    }

    @RequestMapping("/queryByTarget")
    @ResponseBody
    public  Result queryByTarget(String start_time,String end_time,String brand,String color,Integer page,Integer limit,HttpServletRequest request){
        System.out.println(start_time+" "+end_time+" "+page);
        System.out.println(color + " " +brand);
        //需要一个分页的类 Page 通过分页的算法算出从第几条开始，他就往后查多少条 pageTotal
        Page page1 = new Page(page,limit);
        Result result = new Result();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
       // SimpleDateFormat sdf = new SimpleDateFormat("yy-MM-dd");
        Date date1,date2;
        if(brand.length()<=0)brand=null;
        if(color.length()<=0)color=null;
        try{
            date1 = simpleDateFormat.parse(start_time);
            date2 = simpleDateFormat.parse(end_time);
        }catch (Exception e){
            date1 = null;
            date2 = null;;
        }
        try {
            List<Car> chaxun = null;
            if(date1 != null && date2 != null){
                if(color == null && brand != null){
                     chaxun = carMapper.selectByBrandTime(brand,date1,date2,page1.getPage(), page1.getPageTotal());
                }
                else if(color != null && brand == null){
                     chaxun = carMapper.selectByColorTime(color,date1,date2,page1.getPage(), page1.getPageTotal());
                }
                else if(color != null && brand != null){
                     chaxun = carMapper.queryByTarget(date1,date2, brand,color,page1.getPage(), page1.getPageTotal());
                }else {
                    chaxun = carMapper.selectByTime(date1,date2,page1.getPage(), page1.getPageTotal());
                }
            }else {
                if(color != null && brand != null){
                    chaxun = carMapper.selectByColorBrand(brand,color,page1.getPage(),page1.getPageTotal());
                }else if(color == null && brand != null){
                    chaxun = carMapper.selectBybrand(brand,page1.getPage(),page1.getPageTotal());
                }else {
                    chaxun = carMapper.selectByColor(color,page1.getPage(),page1.getPageTotal());
                }
            }
            //需要根据uderid查询的方法 根据userid查询符合条件的结果集

            if(chaxun == null){
                result.setMessage("没有数据");
                result.setStatus("200");
            }else{
                //System.out.println(chaxun);
                Change change = new Change();
                change.setId((int)(Math.random() *1000000)-1);
                change.setOpreator("amdin");
                change.setoType("search");
                Date date = sdf.parse(sdf.format(calendar.getTime()));
                change.setChangeTime(date);
                System.out.println(change.getChangeTime());
                changeMapper.insert(change);
                result.setMessage("success");
                result.setItem(chaxun);
                result.setTotal(chaxun.size());

            }
        } catch (Exception e) {
            e.printStackTrace();
            result.setMessage("error");
        }
        return result;
    }
}
