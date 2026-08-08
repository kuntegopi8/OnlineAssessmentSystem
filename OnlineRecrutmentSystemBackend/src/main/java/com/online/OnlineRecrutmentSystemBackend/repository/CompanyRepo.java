package com.online.OnlineRecrutmentSystemBackend.repository;

import java.sql.PreparedStatement
;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.online.OnlineRecrutmentSystemBackend.model.Company;

@Repository
public class CompanyRepo {
	
	@Autowired
	JdbcTemplate template;
	public boolean isAddCompany(Company c)
	{
		int value = template.update("insert into company(Name,Description,Location,Contact, Website) values(?,?,?,?,?)",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1,c.getName());
				ps.setString(2,c.getDescription() );
				ps.setString(3, c.getLocation());
				ps.setLong(4,c.getContact());
				ps.setString(5, c.getWebsite());
				
			}});
				
		return value>0;
		
	}
	
	public Optional<List<Company>> getAllCompany()
	{
		List<Company> list = template.query("select * from company", new RowMapper() {

			@Override
			public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
				Company c = new Company();
				
				 c.setId(rs.getInt("id"));
	                c.setName(rs.getString("name"));
	                c.setDescription(rs.getString("description"));
	                c.setLocation(rs.getString("location"));
	                c.setContact(rs.getLong("contact"));
	                c.setWebsite(rs.getString("website"));

	                return c;
			}});
		
		return list.isEmpty() ? Optional.empty() : Optional.of(list);
		
	}
	public Optional<List<Company>> getAllCompanyId(int id)
	{
		PreparedStatementSetter ps = new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, id);
				
			}
			
		};
		RowMapper<Company> rw = new RowMapper() {

			@Override
			public Company mapRow(ResultSet rs, int rowNum) throws SQLException {
				Company c= new Company();
                c.setName(rs.getString("name"));
                c.setDescription(rs.getString("description"));
                c.setLocation(rs.getString("location"));
                c.setContact(rs.getLong("contact"));
                c.setWebsite(rs.getString("website"));

                return c;
			}};
		List<Company> list = template.query("select * from company where id = ?", ps, rw);
		  return list.isEmpty() ? Optional.empty() : Optional.of(list);
		
		
	}
	public boolean isDelete(int id)
	{
		int value = template.update("delete from company where id=?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setInt(1, id);
				
			}});
		return value>0;
		
		
		
	}
	
	public boolean isUpdate(int id,Company c)
	{
		int value = template.update(" update company set Name=?,Description=?,Location=?,Contact=?,Website=? where id =?",new PreparedStatementSetter() {

			@Override
			public void setValues(PreparedStatement ps) throws SQLException {
				ps.setString(1, c.getName());
				ps.setString(2, c.getDescription());
				ps.setString(3,c.getLocation());
				ps.setLong(4,c.getContact());
				ps.setString(5, c.getWebsite());
				ps.setInt(6, id);
				
			}
			
		});
		return value>0;
		
		
	}
	
	public int companyCount() {
		List<Integer>li=template.query("select count(*) from company",new RowMapper<Integer>() {

			@Override
			public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub
				
				return rs.getInt(1);
			}
		});
		
		return li.get(0);
	}
}
