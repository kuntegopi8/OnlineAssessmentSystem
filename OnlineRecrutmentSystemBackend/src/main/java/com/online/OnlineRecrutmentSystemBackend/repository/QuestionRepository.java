package com.online.OnlineRecrutmentSystemBackend.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;


import javax.swing.tree.TreePath;

import org.jspecify.annotations.Nullable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.online.OnlineRecrutmentSystemBackend.model.Question;

@Repository
public class QuestionRepository {
	
	@Autowired
	JdbcTemplate template;
	public boolean isAddQuestion(Question q)
	{
		int value = template.update( "insert into question (Assessment_ID,Question_Text,Option_A,Option_B,Option_C,Option_D,Correct_Answer,Marks) VALUES (?,?,?,?,?,?,?,?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				//q.getAssessment_ID()
				 
				ps.setInt(1,q.getAssessment_ID());
				ps.setString(2, q.getQuestion_Text());
				ps.setString(3, q.getOption_A());
				ps.setString(4, q.getOption_B());
				ps.setString(5, q.getOption_C());
				ps.setString(6, q.getOption_D());
				ps.setString(7, q.getCorrect_Answer());
				ps.setInt(8, q.getMarks());
				
			}
	});
		return value>0;
		
		
	}
	
	public boolean isUpdateQuestion(Question q,int id)
	{
		int value =template.update("update question set Question_Text=?,Option_A=?,Option_B=?,Option_C=?,Option_D=?,Correct_Answer=?,Marks=? where id=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1,q.getQuestion_Text());
				ps.setString(2,q.getOption_A());
				ps.setString(3, q.getOption_B());
				ps.setString(4, q.getOption_C());
				ps.setString(5, q.getOption_D());
				ps.setString(6,q.getCorrect_Answer());
				ps.setInt(7, q.getMarks());
				ps.setInt(8, id);
				
			}});
		
		return value>0;
		
		
	}
	
	public List<Question> getAllQuestion(int id)
	{
		PreparedStatementSetter ps = new PreparedStatementSetter()
				{

					@Override
					public void setValues(PreparedStatement ps) throws SQLException {
						ps.setInt(1, id);
						
					}
			
				};
				
		RowMapper rw = new RowMapper() {

			@Override
			public Question mapRow(ResultSet rs, int rowNum) throws SQLException {
				Question q = new Question();
				q.setQuestion_Text(rs.getString(3));
				q.setOption_A(rs.getString(4));
				q.setOption_B(rs.getString(5));
				q.setOption_C(rs.getString(6));
				q.setOption_D(rs.getString(7));
				q.setCorrect_Answer(rs.getString(8));
				q.setMarks(rs.getInt(9));
				return q;
			}
			
			
		};
		List<Question> list = template.query("select * from question where Assessment_ID=?",ps,rw);
		
		return list;
		
		
	}
	
	public boolean isDelete(int id)
	{
		int value = template.update("delete from question where id=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, id);
				
			}});
		return value>0;
		
		
	}

}
