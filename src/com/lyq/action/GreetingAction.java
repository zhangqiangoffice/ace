package com.lyq.action;

import com.opensymphony.xwork2.ActionSupport;

public class GreetingAction extends ActionSupport {
	private String username;
	
	@Override
	public String execute() throws Exception{
		if(username == null || "".equals(username)){
			return ERROR;
		}else{
			return SUCCESS;
		}
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
}
