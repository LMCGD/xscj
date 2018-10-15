/**
 * 
 */
package com.xscj.dao;

import java.util.List;

import com.xscj.domain.Grade;
import com.xscj.domain.GradeInfo;

/**
 * @author wyf 班级设置底层操作接口
 *
 */
public interface GradeDao {
	/**
	 * @author wyf 得到班级总数的底层操作接口
	 * 
	 * */
	public int getGradeCount();
	
	/**
	 * @author wyf 得到班级列表的底层操作接口
	 * */
	public List<Grade> getAllGrades();
	
	/**
	 * @author wyf得到高一年级所对应届的底层操作接口
	 * */
	public int getMaxYear();
	
	/**
	 * @author wyf得到指定区间内班级个数
	 * 
	 * */
	public int getValidGradeCount(int minYear,int maxYear);
	
	/**
	 * @author wyf得到指定区间内班级列表
	 * */
	public List<Grade> getValidAllGrades(int minYear, int maxYear);
	
	
	/**
	 * @author wyf 得到某一届总共有多少个班
	 * */
	public int getClassesCount(int maxYear);
	
	
	/**
	 * @author wyf 向数据库中添加一条新的班级信息
	 * */
	public int AddGradeToDb(Grade grade);
	
	/**
	 * @author wyf 得到最新一届的班级列表
	 * */
	public List<Grade> getMaxYearGrades(int maxYear);
	
	/**
	 * @author wyf得到某条具体的班级信息
	 * */
	public Grade getGradeBybianHao(String bianHao);
	
	/**
	 * @author wyf
	 * 模拟删除 设置删除标志
	 * */
	public void deleteChoiceGrades(String[] gradeStrings);
	
	/**
	 * @author wyf
	 * 通过学生学号获得这个学生的班级信息
	 * */
	public Grade getGradeBystuXueHao(int stuXueHao);
	
	/**
	 * @author wyf
	 * 得到所有合法的班级信息集合
	 * */
	public List<Grade> getALLValidGrades();
	
	/**
	 * @author wyf
	 * @return获得所有班级的详细信息
	 * */
	public List<GradeInfo> getGradeInfos();
	
	/**
	 * @author wyf
	 * 
	 * */
	public List<Grade> getGradesEnableDel();
	/**
	 * @author wyf
	 * */
	public List<Integer> getYears();
	
	/**
	 * @author wyf
	 * */
	public List<GradeInfo> getGradeInfos(int year);
	
	/**
	 * @author wyf
	 * */
	public int hasRecord(String teacherID);
	
}
