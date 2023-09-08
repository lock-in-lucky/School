import com.ecut.pojo.Classes;
import com.ecut.pojo.Teacher;
import com.ecut.service.ClassesService;
import com.ecut.service.TeacherService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ClassesTest {
    /**
     * 测试查询全部班级
     */
    @Test
    public void test6(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        ClassesService classesService = context.getBean("classesServiceImpl", ClassesService.class);

        List<Classes> classess = classesService.getClassessByPage();
//        List<Classes> classess = classesService.getClassess();
        for (Classes classes : classess) {
            System.out.println(classes);
        }
    }
}
