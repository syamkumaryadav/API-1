package com.vnk.service;

import com.vnk.entity.UserDetails;

public interface IUserService {
public String userSignUp(UserDetails user);
public String userLogin(String email,String password);
public UserDetails viewDetails(String email);
}
