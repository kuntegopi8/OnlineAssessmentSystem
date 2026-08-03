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

import com.online.OnlineRecrutmentSystemBackend.model.Assessment;


@Repository
public class AssessmentRepo {
    @Autowired
    JdbcTemplate template;
    public boolean isRegisterAssessment(Assessment a)
    {
    	int val=template.update("insert into assessment(Assessment_Name,Domain,Duration,Total_Questions,Total_Marks,Eligibility_Criteria)values(?,?,?,?,?,?)",new PreparedStatementSetter() {
    		public void setValues(PreparedStatement ps)throws SQLException
    		{
    			ps.setString(1, a.getAssessmentName());
    			ps.setString(2, a.getDomain());
    			ps.setInt(3, a.getDuration());
    			ps.setInt(4, a.getTotalMarks());
    			ps.setInt(5, a.getTotalMarks());
    			ps.setInt(6, a.getEligibility());
    		}
    	});
    	
    	return val>0;
    }
    public boolean isUpdateAssessment(int id,Assessment a)
    {
    	int val=template.update("update assessment set Assessment_Name=?,Domain=?,Duration=?,Total_Questions=?,Total_Marks=?,Eligibility_Criteria=? where Assessment_Id=?",new PreparedStatementSetter() {
    		public void setValues(PreparedStatement ps)throws SQLException
    		{
    			ps.setString(1, a.getAssessmentName());
    			ps.setString(2, a.getDomain());
    			ps.setInt(3, a.getDuration());
    			ps.setInt(4, a.getTotalMarks());
    			ps.setInt(5, a.getTotalMarks());
    			ps.setInt(6, a.getEligibility());
    			ps.setInt(7,id);
    		}
    	});
    	
    	return val>0;
    }
    public boolean isDeleteAssessment(int id)
    {
    	int val=template.update("delete from assessment where Assessment_Id=?",new PreparedStatementSetter() {
    		public void setValues(PreparedStatement ps)throws SQLException
    		{
    			ps.setInt(1,id);
    		}
    	});
    		
    	return val>0;
    }
    public List<Assessment> getAllAssessment()
    {
    	List<Assessment> li=template.query("select * from assessment",new RowMapper() {
    		public Assessment mapRow(ResultSet rs,int val)throws SQLException
    		{
    			Assessment a=new Assessment();
    			a.setId(rs.getInt(1));
    			a.setAssessmentName(rs.getString(2));
    			a.setDomain(rs.getString(3));
    			a.setDuration(rs.getInt(4));
    			a.setTotalQuestion(rs.getInt(5));
    			a.setTotalMarks(rs.getInt(6));
    			a.setEligibility(rs.getInt(7));
    			return a;
    			
    		}
    		
    	});
    	return li;
    }
    
}

