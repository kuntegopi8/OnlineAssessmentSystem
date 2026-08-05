package com.online.OnlineRecrutmentSystemBackend.service;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.stereotype.Service;

import com.online.OnlineRecrutmentSystemBackend.model.RecruitmentDrive;
import com.online.OnlineRecrutmentSystemBackend.repository.RecruitmentDriveRepository;

@Service
public class RecruitmentDriveService {
	@Autowired
	RecruitmentDriveRepository repo;
	
	public boolean isAddDrive(RecruitmentDrive d)
	{
		return repo.isAddDrive(d);
		
	}
	public Optional<List<RecruitmentDrive>> getAllDrive()
	{
		return repo.getAllDrive();
	}
	public Optional<List<RecruitmentDrive>> getAllDriveById(int id)
	{
		return repo.getAllDriveById(id);
	}
	public boolean isUpdate(int id,RecruitmentDrive rd)
	{
		return repo.isUpdate(id, rd);
	}
	public boolean isDelete(int id)
	{
		return repo.isDelete(id);
		
		
	}

}
