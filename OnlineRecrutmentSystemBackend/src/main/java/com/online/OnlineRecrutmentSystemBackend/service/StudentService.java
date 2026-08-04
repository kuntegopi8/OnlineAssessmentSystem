package com.online.OnlineRecrutmentSystemBackend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.OnlineRecrutmentSystemBackend.model.Student;
import com.online.OnlineRecrutmentSystemBackend.repository.StudentRepo;

@Service
public class StudentService {
 @Autowired
	StudentRepo sr;
  public boolean isRegister(Student s)
  {
	  return sr.isRegister(s);
  }
  public boolean isPresent(String email,String pass)
  {
	  return sr.isPresent(email,pass);
  }
  public List<Student> getProfile(int id)
  {
	  return sr.getProfile(id);
  }
  public boolean updateProfile(Student s,int id)
  {
	  return sr.updateProfile(s, id);
  }
  public boolean isDelete(int id)
  {
	  return sr.isDelete(id);
  }
}
