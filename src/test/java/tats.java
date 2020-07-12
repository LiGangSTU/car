import com.work.virus.dao.CarMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Author LiGang
 * @Date 2020/7/12 9:23
 * @Version 1.0
 */
@RunWith(SpringJUnit4ClassRunner.class)
//加载spring  配置文件
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class tats {
    @Autowired
    private CarMapper carMapper;

    @Test
    public void test() {

    }
}
