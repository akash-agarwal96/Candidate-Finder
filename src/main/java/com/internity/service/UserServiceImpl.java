package com.internity.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.internity.dao.UserDao;
import com.internity.entity.CustomerLogin;
import com.internity.entity.User;
import com.internity.entity.UserRegistration;

@Service
@EnableTransactionManagement
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Transactional
	public void saveUser(UserRegistration userRegistration) {
		userDao.saveCustomer(userRegistration);

	}

	@Transactional
	public List<?> getAllUser(UserRegistration userRegistration) {
		return userDao.getAllUser(userRegistration);
	}

	@Transactional
	public boolean existsByEmail(String email, Class<User> class1) {
		return userDao.existsByEmail(email,class1);
	}

	@Transactional
	public void saveCustomer(User user) {
		userDao.saveUser(user);
		
	}

	@Transactional
	public List<?> getAllUser(String search) {
		return userDao.getAllUser(search);
	}

	@Transactional
	public boolean validateCustomer(CustomerLogin customerLogin) {
		
		return userDao.validateCustomer(customerLogin);
	}

	@Transactional
	public List<UserRegistration> getAllUserDetail(String email) {
		return userDao.getAllUserDetail(email);
	}

	@Transactional
	public boolean updateUser(UserRegistration userRegistration,String email) {
		return userDao.updateUser(userRegistration,email);
	}

	@Transactional
	public void saveUpdateUser(UserRegistration userRegistration, String email) {
		userDao.saveUpdateUser(userRegistration,email);
		
	}

	@Transactional
	public void saveUpdateSecUser(UserRegistration userRegistration, String email) {
		userDao.saveUpdateSecUser(userRegistration,email);
		
	}

	

}
