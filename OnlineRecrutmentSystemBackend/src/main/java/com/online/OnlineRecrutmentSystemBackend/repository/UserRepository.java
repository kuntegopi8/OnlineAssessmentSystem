package com.online.OnlineRecrutmentSystemBackend.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.jspecify.annotations.Nullable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.online.OnlineRecrutmentSystemBackend.model.User;
@Repository
public class UserRepository {
	@Autowired
	JdbcTemplate template;
	
	public User login(User user)
	{
		PreparedStatementSetter ps = new PreparedStatementSetter()
				{

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setString(1, user.getEmail());
						ps.setString(2, user.getPassword());;
						
					}
			
				};
				  RowMapper<User> rw = new RowMapper<User>() {

			            @Override
			            public User mapRow(ResultSet rs, int rowNum) throws SQLException {

			                User u = new User();

			                u.setUserId(rs.getInt("user_id"));
			                u.setFullName(rs.getString("full_name"));
			                u.setEmail(rs.getString("email"));
			                u.setPassword(rs.getString("password"));
			                u.setMobile(rs.getString("mobile"));
			                u.setGender(rs.getString("gender"));
			                u.setQualification(rs.getString("qualification"));
			                u.setCollegeName(rs.getString("college_name"));
			                u.setCgpa(rs.getDouble("cgpa"));
			                u.setRole(rs.getString("role"));

			                return u;
			            }
			        };
		
		List<User> list = template.query("select * from users where email=? AND password=?", ps,rw);
		if (list.isEmpty()) {
		    return null;
		} else {
		    return list.get(0);
		}
		
		
		
		
	}

}
