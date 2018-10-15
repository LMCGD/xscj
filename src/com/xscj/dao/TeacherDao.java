package com.xscj.dao;

import java.util.List;

import com.xscj.domain.SubTeacher;
import com.xscj.domain.Teacher;

public interface TeacherDao {
	/**
	 * 
	 * 得到教师总人数底层实现
	 * */
	public int getTeacherCount();
	
	/**
	 * 
	 * 添加一条新的教师信息底层实现
	 * */
	public int addTeacherToDb(Teacher teacher);
	
	/**
	 * 
	 * 分页查询底层实现代码
	 * */
		public List<Teacher> queryByPage(int pageSize, int pageNow);
		
		/**
		 * 
		 * @author wyf 得到所有教师编号
		 * */
		public List<String> getAllTeacherBh();
		
		/**
		 * @author wyf 得到所有教师的教师编号和教师姓名的组合 集合
		 * @date 2014-3-19 下午6:11:00
		 * */
		public List<SubTeacher> getAllSubTeachers();
		
		/**
		 * @author wyf 得到指定课程的所有授课老师的教师编号和教师姓名的组合集合
		 * 
		 * */
		public List<SubTeacher> getAllSubTeachersByCourseID(String courseID);
		
		/**
		 * @author wyf 得到有效的教师总人数
		 * */
		public int getValidTeacherCount();
		
		/**
		 * @author wyf
		 * 模拟删除操作 设置删除标志
		 * 
		 * */	
		public void deleteTeacherByBianHao(String bianHao);
		
		
		/**
		 * @author wyf
		 * 通过教师编号获从教师注册表中获取教师姓名
		 * */
		public String getTeacherNameByTeacherID(String teacherBianHao);
		
		/**
		 * @author wyf
		 * @param教师编号
		 * @return教师的基本个人信息
		 * 
		 * */
		public Teacher getTeacherInfo(String teacherBianHao);
		
		/**
		 * @author wyf
		 * @param教师对象
		 * @return更新教师基本信息
		 * 
		 * *
		 */
		public void updateTeacherInfo(Teacher teacher);
		/**
		 * @author wyf
		 * @return判断这个教师是否存在
		 * 
		 * */
		public int isExisit(String teacherBianHao);
		
		/**
		 * @author wyf
		 * */
		public int isExisits(String gradeID, String password);
		
		public void updatePass(String bianHao, String newPass);
}
