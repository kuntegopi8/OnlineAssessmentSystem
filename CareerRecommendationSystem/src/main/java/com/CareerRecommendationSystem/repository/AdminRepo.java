package com.CareerRecommendationSystem.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.CareerRecommendationSystem.model.Admin;

@Repository
public class AdminRepo {
   @Autowired
   JdbcTemplate template;
   public boolean isRegisterAdmin(Admin ad)
   {
	   int value=template.update("insert into admin(Username,Email,Password)values(?,?,?)",new PreparedStatementSetter() {
		   public void setValues(PreparedStatement ps)throws SQLException
		   {
			   ps.setString(1, ad.getUname());
			   ps.setString(2, ad.getEmail());
			   ps.setString(3,ad.getPass());
		   }
	   });
	   return value>0;
   }
   
   public boolean isAdminExists(String email,String pass)
   {
	   List<Admin> li=template.query("select * from admin where Email=? and Password=?",new PreparedStatementSetter() {
		   public void setValues(PreparedStatement ps)throws SQLException
		   {
			   ps.setString(1,email);
			   ps.setString(2,pass);
			   
		   }},new RowMapper() {
			   public Admin mapRow(ResultSet rs,int val) throws SQLException
			   {
				   Admin a=new Admin();
				   a.setEmail(rs.getString("Email"));
				   a.setPass(rs.getString("Password"));
				   return a;	
			   }
		   });
	   return li.size()>0;
   }
}
