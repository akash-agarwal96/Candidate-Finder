package com.internity.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import com.internity.customValidator.UniqueEmail;

@Table
@Entity
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="SEQUENCE2")
	@SequenceGenerator(name="SEQUENCE2", sequenceName="USER_SIGNEDUP", allocationSize=1)	
	private int id;
	
	@NotEmpty(message = "*required")
	private String name;
	@NotEmpty(message = "*required")
	@Email(message = "must be in email format")
	@Column(unique = true,name = "email")
	@UniqueEmail
	private String email;
	@NotEmpty(message = "*required")
	@Size(min = 6, message = "At least 6 character long")
	private String password;
	@NotEmpty(message = "*required")
	private String cPassword;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	
	public String getcPassword() {
		return cPassword;
	}
	public void setcPassword(String cPassword) {
		this.cPassword = cPassword;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", cPassword="
				+ cPassword + "]";
	}
	
	
}
