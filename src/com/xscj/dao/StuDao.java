/**
 * 
 */
package com.xscj.dao;

import java.util.List;

import com.xscj.domain.SimpleStudent;
import com.xscj.domain.Student;
import com.xscj.domain.SubStudent;

/**
 * @author wyf
 *
 */
public interface StuDao {
	/**
	 * 得到学生总人数底层实现代码
	 * 
	 * */
	
	public int getStuCount();
	
	/**
	 * 
	 * 添加第一条学生信息底层实现代码
	 * */
	public int addStuToDb(int id, Student student);
	/**
	 * 
	 * 添加一条新的学生信息底层实现代码
	 * */
	public int addStuToDb(Student student);
/**
 * 
 * 分页查询底层实现代码
 * */
	public List<SimpleStudent> queryByPage(int pageSize, int pageNow);
	
	/**
	 * @author wyf
	 * 
	 * 得到有效的学生总人数
	 * */
	
	public int getValidStuCount();
	
	/**
	 * @author wyf
	 * 模拟删除 设置删除标志
	 * */
	
	public void deleteStuByXueHao(int xuehao);
	
	/**
	 * @author wyf
	 * 根据班级编号获得这个班级所有学生的学号以及姓名
	 * */
	public List<SubStudent> getAllSubStudentsByGradeID(String gradeID);
	
	/**
	 * @author wyf
	 * 根据学生学号查询这个学生的姓名
	 * */
	public SubStudent getSubStudentByXueHao(int stuXueHao);	
	
	/**
	 * @author wyf
	 * @param班级编号
	 * @param学期
	 * @param考试类型
	 * @param课程编号
	 * @return 返回某次考试某门课程所有成绩未记录的学生集合
	 * */
	public List<SubStudent> getAllSubStudentsByGXTC(String gradeID, int xueqi, String examType, String courseID);
	
	/**
	 * @author wyf
	 * @param 学生学号
	 * @return 学生的个人基本信息
	 * */
	public Student getStudent(int xuehao);
	/**
	 * @author wyf
	 * @param学号
	 * @param学生信息
	 * @return更新学生信息
	 * */
	public void updateStuInfo(int xuehao, Student student);
	
	/**
	 * @author wyf
	 * @param学生学号
	 * @return学生简单的个人信息
	 * 
	 * */
	public SimpleStudent querySimpleStudent(int stuXueHao);
	
	/**
	 * @author wyf
	 * @param班级编号
	 * @return返回某个班级的所有学生集合
	 * 
	 * */
	public List<SimpleStudent> querySimpleStudents(String gradeID);
	/**
	 * @author wyf
	 * @return判断学生是否存在
	 * */
	public int isExisits(int stuXueHao);
	/**
	 * @author wyf
	 * @return判断某个班级是否有学生存在
	 * */
	public int isExisits(String gradeID);
	
	/**
	 * @author wyf
	 * */
	public int isExisits(int stuXueHao, String password);
	
	public void updatePass(int stuXueHao, String password);
	
}
