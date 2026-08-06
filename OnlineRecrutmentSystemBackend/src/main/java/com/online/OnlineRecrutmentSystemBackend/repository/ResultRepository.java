package com.online.OnlineRecrutmentSystemBackend.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.online.OnlineRecrutmentSystemBackend.model.Result;

@Repository
public class ResultRepository {
	@Autowired
	JdbcTemplate template;
	
	public boolean saveResult(Result result)
	{
		int value = template.update(" insert into result(User_Id,Assessment_ID,Score,Eligibility_Status) value(?,?,?,?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				   ps.setInt(1, result.getUserId());
                   ps.setInt(2, result.getAssessmentId());
                   ps.setInt(3, result.getScore());
                   ps.setString(4, result.getEligibilityStatus());
				
			}
		
			
		});
		return value>0;
		
	}
	
	
	public List<Result> getStudentResult(int userId)
	{
		PreparedStatementSetter ps = new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, userId);
				
			}};
		List<Result> list = template.query("select * from result where User_ID=?", ps,new RowMapper<Result>() {

			@Override
			public Result mapRow(ResultSet rs, int rowNum) throws SQLException {
				Result r = new Result();
			    r.setId(rs.getInt("id"));
                r.setUserId(rs.getInt("User_ID"));
                r.setAssessmentId(rs.getInt("Assessment_ID"));
                r.setScore(rs.getInt("Score"));
                r.setEligibilityStatus(rs.getString("Eligibility_Status"));

                return r;
			}});
		return list;
		
		
		
	}
	

}
