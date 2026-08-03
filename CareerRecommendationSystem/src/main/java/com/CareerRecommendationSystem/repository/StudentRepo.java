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

import com.CareerRecommendationSystem.model.Student;

@Repository
public class StudentRepo {
       @Autowired
       JdbcTemplate template;
	public boolean isRegister(Student s)
	{
		int value=template.update("insert into Student (Student_Id,Student_Name,Email,Password,Contact_Number,Qualification,College_Name,CGPA,Area_Of_Interest)values('0',?,?,?,?,?,?,?,?)",new PreparedStatementSetter() {
			public void setValues(PreparedStatement ps) throws SQLException
			{
				ps.setString(1,s.getSname());
				ps.setString(2,s.getEmail());
				ps.setString(3, s.getPass());
				ps.setString(4,String.valueOf(s.getContact()));
				ps.setString(5,s.getQualification());
				ps.setString(6,s.getCollege());
				ps.setFloat(7, s.getCgpa());
				ps.setString(8,s.getInterest());
			}
		});
		return value>0;
	}
	
	public boolean isPresent(String email,String pass)
	{
		List<Student> li=template.query("select Student_Id from Student where Email=? and Password=?",new PreparedStatementSetter() {
			public void setValues(PreparedStatement ps) throws SQLException
			{
				ps.setString(1, email);
				ps.setString(2, pass);
				
			}
		},
				new RowMapper() {
			 public Student mapRow(ResultSet rs,int val)throws SQLException
			 {
				 Student s=new Student();
				 s.setSid(rs.getInt(1));
				 return s;
			 }
		});
		return li.size()>0;
	}
}
