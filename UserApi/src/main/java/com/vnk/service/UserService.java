package com.vnk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vnk.entity.UserDetails;
import com.vnk.repository.UserRepository;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserRepository repository;

	@Override
	public String userSignUp(UserDetails user) {
		UserDetails save = repository.save(user);
		if (save == null) {
			return null;
		} else {
			return save.getFirstName() + " Successfully  register.....";
		}
	}

	@Override
	public String userLogin(String email, String password) {
		if (!email.isEmpty() && !password.isEmpty()) {
			UserDetails user = repository.findByEmailAndPassword(email, password);
			if (user != null) {
				return user.getEmail() + " Login Successfully";
			} else {
				return "null";
			}
		} else {
			return "null";
		}
	}

	@Override
	public UserDetails viewDetails(String email) {

		return repository.getById(email);
	}
}
