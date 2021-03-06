package com.xscj.service;

import java.util.List;

import com.xscj.domain.SubTeacher;
import com.xscj.domain.Teacher;

public interface TeacherManager {
	/**
	 * 得到教师总人数业务处理
	 * 
	 * */
	public int getTeacherCount();
	
	/**
	 * 
	 * 添加一条新的教师信息业务处理
	 * 
	 * */
	public int addTeacherToDb(Teacher teacher);
	
	/**
	 * 分页查询
	 * */
	public List<Teacher> queryByPage(int pageSize, int pageNow);
	
	/**
	 * @author wyf 得到所有教师编号的业务逻辑处理
	 * @date 2014-3-18 下午7:26:44
	 * */
	public List<String> getAllTeacherBh();
	
	/**
	 * @author wyf 得到所有教师的教师编号和教师姓名组合的集合
	 * @date 2014-3-19 下午6:21:49
	 * */
	public List<SubTeacher> getAllSubTeachers();
	
	/**
	 * @author wyf 得到指定课程的所有教师的教师编号和教师姓名组合的集合
	 * 
	 * */
	public List<SubTeacher> getAllSubTeachersByCourseID(String courseID);
	
	/**
	 * @author wyf 得到有效的教师总人数
	 * @date 2014-3-21 下午3:35:09
	 * */
	public int getValidTeacherCount();
	
	/**
	 * @author wyf
	 * @date 2014-3-21 下午3:42:11
	 * 模拟删除操作 设置删除标志
	 * 
	 * */	
	public void deleteTeacherByBianHao(String bianHao);
	
	
	/**
	 * @author wyf
	 * @date 2014-3-23 下午7:38:41
	 * 通过教师编号获从教师注册表中获取教师姓名
	 * */
	public String getTeacherNameByTeacherID(String teacherBianHao);
	
	/**
	 * @author wyf
	 * @date 2018-4-13 下午12:30:31
	 * @param教师编号
	 * @return教师的基本个人信息
	 * 
	 * */
	public Teacher getTeacherInfo(String teacherBianHao);
	
	
	/**
	 * @author wyf
	 * @date 2018-4-13 下午3:53:06
	 * @param教师对象
	 * @return更新教师基本信息
	 * 
	 * *
	 */
	public void updateTeacherInfo(Teacher teacher);
	
	/**
	 * @author wyf
	 * @date 2018-4-15 下午9:13:04
	 * @return判断这个教师是否存在
	 * 
	 * */
	public int isExisit(String teacherBianHao);
	
	/**
	 * @author wyf
	 * @date 2018-4-18 下午9:28:17
	 * */
	public int isExisits(String gradeID, String password);

	public void updatePass(String bianHao, String newPass);
	
}
