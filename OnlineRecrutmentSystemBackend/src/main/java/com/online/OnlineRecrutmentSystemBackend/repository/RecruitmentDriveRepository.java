package com.online.OnlineRecrutmentSystemBackend.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.online.OnlineRecrutmentSystemBackend.model.RecruitmentDrive;

@Repository
public class RecruitmentDriveRepository {

	@Autowired
	JdbcTemplate template;
	
	public boolean isAddDrive(RecruitmentDrive d)
	{
		int value =template.update("insert into recruitment_drive(Company_ID,Name,Date,Minimum_Score,Status,Description) value(?,?,?,?,?,?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
			
				ps.setInt(1, d.getCompanyId());
				ps.setString(2,d.getName());
				ps.setDate(3,  d.getDate());
				ps.setInt(4, d.getMinimumScore());
				ps.setString(5,d.getStatus());
				ps.setString(6,d.getDescription());
				
				
			}});
		return value>0;
		
		
	}
	
	public Optional<List<RecruitmentDrive>> getAllDrive()
	{
		List<RecruitmentDrive> list = template.query("select * from recruitment_drive",new RowMapper<>() {

			@Override
			public RecruitmentDrive mapRow(ResultSet rs, int rowNum) throws SQLException {
				RecruitmentDrive d = new RecruitmentDrive();
				d.setId(rs.getInt(1));
				d.setCompanyId(rs.getInt(2));
				d.setName(rs.getString(3));
				d.setDate(rs.getDate(4));
				d.setMinimumScore(rs.getInt(5));
				d.setStatus(rs.getString(6));
				d.setDescription(rs.getString(7));
				
		
				return d;
			}});
		return list.isEmpty() ? Optional.empty() : Optional.of(list);
		
	}
	public Optional<List<RecruitmentDrive>> getAllDriveById(int id)
	{
		PreparedStatementSetter ps = new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, id);
				
			}};
		List<RecruitmentDrive> list = template.query("select * from recruitment_drive where id=?",ps,new RowMapper<>() {
			

			@Override
			public RecruitmentDrive mapRow(ResultSet rs, int rowNum) throws SQLException {
				RecruitmentDrive d = new RecruitmentDrive();
				d.setCompanyId(rs.getInt(2));
				d.setName(rs.getString(3));
				d.setDate(rs.getDate(4));
				d.setMinimumScore(rs.getInt(5));
				d.setStatus(rs.getString(6));
				d.setDescription(rs.getString(7));
				
		
				return d;
			}});
		return list.isEmpty() ? Optional.empty() : Optional.of(list);
		
	}
	
	public boolean isUpdate(int id,RecruitmentDrive rd)
	{
		int value =template.update("update recruitment_drive set Name=?,Date=?,Minimum_Score=?,Status=?,Description=? where id=?;",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1,rd.getName());
				ps.setDate(2, rd.getDate());
				ps.setInt(3, rd.getMinimumScore());
				ps.setString(4, rd.getStatus());
				ps.setString(5, rd.getDescription());
				ps.setInt(6,id);
			}});
		return value>0;
		
		
		
	}
	public boolean isDelete(int id)
	{
		int value = template.update("delete from  recruitment_drive where id=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1,id);
				
			}});
		return value>0;
	}
}
