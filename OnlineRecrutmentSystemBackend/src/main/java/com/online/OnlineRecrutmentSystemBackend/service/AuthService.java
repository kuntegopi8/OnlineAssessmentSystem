package com.online.OnlineRecrutmentSystemBackend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.OnlineRecrutmentSystemBackend.model.User;
import com.online.OnlineRecrutmentSystemBackend.repository.UserRepository;

@Service
public class AuthService {
	
	@Autowired
	UserRepository repo;
	
	public User login(User user)
	{
		
		return repo.login(user);
	}

}
