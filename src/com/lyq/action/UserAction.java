package com.lyq.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	private String info;
	
	public String save() throws Exception{
		info = "保存用户信息";
		return SUCCESS;
	}
	
	public String add() throws Exception{
		info = "add 添加用户信息";
		return "add";
	}
	
	public String update() throws Exception{
		info = "update 更新用户信息";
		return "update";
	}
	
	public String delete() throws Exception{
		info = "删除用户信息";
		return SUCCESS;
	}
	
	public String find() throws Exception{
		info = "查找用户信息";
		return SUCCESS;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
	
	
}
