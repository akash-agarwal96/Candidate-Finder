package com.internity.service;

import java.util.List;

import com.internity.entity.CustomerLogin;
import com.internity.entity.User;
import com.internity.entity.UserRegistration;

public interface UserService {

	void saveUser(UserRegistration userRegistration);

	List<?> getAllUser(UserRegistration userRegistration);

	boolean existsByEmail(String email, Class<User> class1);

	void saveCustomer(User user);

	List<?> getAllUser(String search);

	boolean validateCustomer(CustomerLogin customerLogin);

	List<UserRegistration> getAllUserDetail(String email);

	boolean updateUser(UserRegistration userRegistration, String email);

	void saveUpdateUser(UserRegistration userRegistration, String email);

	void saveUpdateSecUser(UserRegistration userRegistration, String email);

	

}
