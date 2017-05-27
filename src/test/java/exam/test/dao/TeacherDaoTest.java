package exam.test.dao;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.yuan.boot.App;
import com.yuan.boot.dao.IBaseDao;
import com.yuan.boot.dao.TeacherDao;

@RunWith(SpringJUnit4ClassRunner.class) 
@WebAppConfiguration
@SpringBootTest(classes = App.class)
public class TeacherDaoTest {
	@Resource(name="teacherDao")
	private TeacherDao teacherDao;
	@Resource(name="baseDao")
	private IBaseDao baseDao;
	@Test
	public void Test(){
		try{
			//teacherDao.findById(1000);
			///System.out.println(baseDao.BaseFindByKey("teacher", "id", "1000"));  baseFindParam
			//System.out.println(baseDao.BaseFindList("teacher"));
			Map<String,String> map=new HashMap<String,String>();
			Map<String,String> map1=new HashMap<String,String>();
			map1.put("id", "1002");
			map.put("username","t1");
			map.put("password","t4");
			//System.out.println(baseDao.baseInsert("teacher",map));
			//System.out.println(baseDao.baseInsert("teacher",map));
			//System.out.println(baseDao.baseUpdate("teacher",map,map1));
			//System.out.println(baseDao.baseUpdateByKey("teacher",map,"id","1003"));
			// System.out.println(baseDao.baseDelete("teacher",map1));
			// System.out.println(baseDao.baseCount("teacher",map1));
			System.out.println(teacherDao.baseCountByKey("teacher","id","1001"));
			//System.out.println(baseDao.baseFindParam("teacher",map));
			//System.out.println(baseDao.baseFindSql("select * from model_main as a left join teacher as b on a.teacher_id=b.id"));
			//System.out.println(baseDao.baseFindSql("select * from model_main as a left join teacher as b on a.teacher_id=b.id"));

		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	
}
