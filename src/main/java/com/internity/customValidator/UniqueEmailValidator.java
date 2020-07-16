package com.internity.customValidator;
import javax.validation.*;
import org.springframework.beans.factory.annotation.Autowired;

import com.internity.entity.User;
import com.internity.service.UserService;

public class UniqueEmailValidator implements ConstraintValidator<UniqueEmail, String> {

	 	@Autowired
	    private UserService userService;

	    public void initialize(UniqueEmail unique) {
	        unique.message();
	    }

	    public boolean isValid(String email, ConstraintValidatorContext context) {
	        if (userService != null && userService.existsByEmail(email,User.class)) {
	            return false;
	        }
	        return true;
	    }
	
}