package com.yuan.boot.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype .Controller;
import org.springframework.stereotype.Repository;

import com.yuan.boot.model.Teacher;
@Repository("teacherDao")
public interface TeacherDao extends IBaseDao{
	public Teacher findById(@Param("teacherId") int teacherId);
}
