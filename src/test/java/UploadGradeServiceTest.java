import com.ecut.pojo.Course;
import com.ecut.pojo.Score;
import com.ecut.pojo.Teacher;
import com.ecut.service.TeacherService;
import com.ecut.service.UploadGradeService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UploadGradeServiceTest {
    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UploadGradeService uploadGradeServiceImpl = context.getBean("uploadGradeServiceImpl", UploadGradeService.class);
        Course courseByCourseId = uploadGradeServiceImpl.getCourseByCourseId("0tuyXiqw");
        System.out.println(courseByCourseId);
    }
    @Test
    public void test2(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        UploadGradeService uploadGradeServiceImpl = context.getBean("uploadGradeServiceImpl", UploadGradeService.class);
        Map<String, List<Score>> map=new HashMap<>();
        List<Score> courses=new ArrayList<>();
        Score score=new Score("0tuyXiqw", "2019212918",98);
        Score score1=new Score("0tuyXiqw", "2019213038",99);
        courses.add(score);
        courses.add(score1);
        map.put("lists",courses);
//        int i = uploadGradeServiceImpl.addMoreScore(map);
//        System.out.println(courseByCourseId);
    }
}
