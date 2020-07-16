package com.internity.entity;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;


public class CustomerLogin {
	
	@NotEmpty(message = "*required")
	@Email(message = "must be email format")
	private String email;
	@NotEmpty(message = "*required")
	private String password;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
