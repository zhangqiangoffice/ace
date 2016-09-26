package com.lyq.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {
	private Map<String, Object> request;
	private Map<String, Object> session;
	private Map<String, Object> application;
	
	@SuppressWarnings("unchecked")
	public TestAction(){
		ActionContext context = ActionContext.getContext();
		request = (Map<String, Object>)context.get("request");
		session = context.getSession();
		application = context.getApplication();
	}
	
	public String execute() throws Exception{
		String re = "request info";
		String se = "sessiont info";
		String ap = "application info";
		
		request.put("info", re);
		session.put("info", se);
		application.put("info", ap);
		
		String r = request.get("info").toString();
	    String s = session.get("info").toString();
	    String a = application.get("info").toString();
	    
		Thread.sleep(1000);
		return SUCCESS;
	}
}
