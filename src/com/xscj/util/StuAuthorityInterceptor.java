/**
 * 
 */
package com.xscj.util;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * @author wyf
 *@date 2018-4-18 下午11:10:39
 */
public class StuAuthorityInterceptor extends AbstractInterceptor {

 

	/**
	 * 
	 */
	private static final long serialVersionUID = -9085894555311247770L;

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.interceptor.AbstractInterceptor#intercept(com.opensymphony.xwork2.ActionInvocation)
	 */
	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext();
		String userName = (String)ctx.getSession().get("userName");
		String userRole = (String)ctx.getSession().get("userRole");
		if(userName!=null && userRole.equals("学生"))
		{
			return invocation.invoke();
		}
		((ActionSupport)invocation.getAction()).addActionError("您还没有登录，系统拒绝了您的访问请求");
		return Action.LOGIN;
	}

}
