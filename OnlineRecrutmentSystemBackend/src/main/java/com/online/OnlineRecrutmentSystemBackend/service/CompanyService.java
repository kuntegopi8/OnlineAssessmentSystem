package com.online.OnlineRecrutmentSystemBackend.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.OnlineRecrutmentSystemBackend.model.Company;
import com.online.OnlineRecrutmentSystemBackend.repository.CompanyRepo;

@Service
public class CompanyService {
	
	@Autowired
	CompanyRepo repo;
	
	public boolean isAddCompany(Company c)
	{
		return repo.isAddCompany(c);
		
	}
	
	public Optional<List<Company>> getAllCompany()
	{
		return repo.getAllCompany();
		
	}
	public Optional<List<Company>> getAllCompanyId(int id)
	{
		return repo.getAllCompanyId(id);
	}
	public boolean isDelete(int id)
	{
		
		return repo.isDelete(id);
	}
	public boolean isUpdate(int id,Company c)
	{
		return repo.isUpdate(id, c);
	}
	public int companyCount() {
	return repo.companyCount();
	}
}
