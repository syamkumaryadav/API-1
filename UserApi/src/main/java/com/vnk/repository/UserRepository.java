package com.vnk.repository;

import org.springframework.data.jpa.repository.JpaRepository; 
import com.vnk.entity.UserDetails;

public interface UserRepository extends JpaRepository<UserDetails, String> {
	public UserDetails findByEmailAndPassword(String email, String password);
}
