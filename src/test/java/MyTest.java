import com.ecut.pojo.Teacher;
import com.ecut.service.TeacherService;
import com.ecut.service.impl.TeacherServiceImpl;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MyTest {
    /**
     * 测试添加一位老师
     */
    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TeacherService teacherService = context.getBean("teacherService", TeacherService.class);
        teacherService.insert(new Teacher("20102131004","吴建东","26178gasui","11028271691","123@qq.com","软件学院",null));
    }

    /**
     * 测试查询所有老师
     */
    @Test
    public void test2(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TeacherService teacherService = context.getBean("teacherService", TeacherService.class);
        List<Teacher> teachers = teacherService.queryTeachers();
        for (Teacher teacher : teachers) {
            System.out.println(teacher);
        }
    }
    /**
     * 测试删除一位老师
     */
    @Test
    public void test3(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TeacherService teacherService = context.getBean("teacherService", TeacherService.class);
        teacherService.deleteTeacher("2019213031");
    }


    /**
     * 测试按姓名和系部查询老师
     */
    @Test
    public void test4(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TeacherService teacherService = context.getBean("teacherService", TeacherService.class);
        List<Teacher> teachers = teacherService.queryFor("吴mou", "软件学院");
        for (Teacher teacher : teachers) {
            System.out.println(teacher);
        }
    }
    /**
     * 测试查询总记录数
     */
    @Test
    public void test5(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TeacherService teacherService = context.getBean("teacherService", TeacherService.class);
        Integer integer = teacherService.selectCount();
        System.out.println(integer);
    }

    /**
     * 测试分页查询记录数
     */
    @Test
    public void test6(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        TeacherService teacherService = context.getBean("teacherService", TeacherService.class);

        Map<String, Object> map=new HashMap<>();
        map.put("start", 0);
        map.put("size", 2);
        List<Teacher> byPage = teacherService.findByPageByMap(map);
        for (Teacher teacher : byPage) {
            System.out.println(teacher);
        }
    }



}
