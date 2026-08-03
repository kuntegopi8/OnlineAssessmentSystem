package com.CareerRecommendationSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.CareerRecommendationSystem.model.Admin;
import com.CareerRecommendationSystem.repository.AdminRepo;

@Service
public class AdminService {

	@Autowired
	AdminRepo ar;
	public boolean isRegisterAdmin(Admin a)
	{
		return ar.isRegisterAdmin(a);
	}
	public boolean isAdminExists(String email,String pass)
	{
		return ar.isAdminExists(email, pass);
	}
}
