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

import com.online.OnlineRecrutmentSystemBackend.model.Student;

@Repository
public class StudentRepo {
       @Autowired
       JdbcTemplate template;
	public boolean isRegister(Student s)
	{
		int value=template.update("insert into users (id,full_name,email,password,mobile,gender,qualification,college_name,cgpa,interest)values('0',?,?,?,?,?,?,?,?,?)",new PreparedStatementSetter() {
			public void setValues(PreparedStatement ps) throws SQLException
			{
				ps.setString(1,s.getSname());
				ps.setString(2,s.getEmail());
				ps.setString(3, s.getPass());
				ps.setString(4,String.valueOf(s.getContact()));
				ps.setString(5,s.getGender());
				ps.setString(6,s.getQualification());
				ps.setString(7,s.getCollege());
				ps.setFloat(8, s.getCgpa());
				ps.setString(9,s.getInterest());
			}
		});
		return value>0;
	}
	
	public boolean isPresent(String email,String pass)
	{
		List<Student> li=template.query("select id from users where email=? and password=?",new PreparedStatementSetter() {
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
	
	public List<Student> getProfile(int id)
	{
		List<Student> li=template.query("select * from users where id=?",new PreparedStatementSetter() {
			public void setValues(PreparedStatement ps)throws SQLException
			{
				ps.setInt(1,id);
			}
		},new RowMapper() {
			public Student mapRow(ResultSet rs,int val) throws SQLException
			{
				Student s=new Student();
				s.setSname(rs.getString(2));
				s.setEmail(rs.getString(3));
				s.setContact(Long.valueOf(rs.getString(5)));
				s.setGender(rs.getString(6));
				s.setQualification(rs.getString(7));
				s.setCollege(rs.getString(8));
				s.setCgpa(rs.getFloat(9));
				
				return s;
			}
		});
		return li;
	}
	
	public boolean updateProfile(Student s,int id)
	{
		int val=template.update("update users set full_name=?,email=?,mobile=?,gender=?,qualification=?,college_name=?,cgpa=?,interest=? where id=?",new PreparedStatementSetter() {
			public void setValues(PreparedStatement ps)throws SQLException
			{
				ps.setString(1,s.getSname());
				ps.setString(2,s.getEmail());
				ps.setString(3,String.valueOf(s.getContact()));
				ps.setString(4,s.getGender());
				ps.setString(5,s.getQualification());
				ps.setString(6,s.getCollege());
				ps.setFloat(7, s.getCgpa());
				ps.setString(8,s.getInterest());
				ps.setInt(9, id);
			}
		});
		return val>0;
	}
	public boolean isDelete(int id)
	{
		int val=template.update("delete from users where id=?",new PreparedStatementSetter() {
			public void setValues(PreparedStatement ps)throws SQLException
			{
				ps.setInt(1,id);
			}
		});
		
		return val>0;
	}
}
