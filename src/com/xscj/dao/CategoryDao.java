/**
 * 
 */
package com.xscj.dao;

/**
 * @author wyf
 *
 */
public interface CategoryDao {
	/**
	 * @author wyf
	 * @date 2018-4-13 
	 * */
	public int getCount(String categorys);
	/**
	 * @author wyf
	 * @date 2018-4-13
	 * */
	public void updateCount(String categorys);
}
