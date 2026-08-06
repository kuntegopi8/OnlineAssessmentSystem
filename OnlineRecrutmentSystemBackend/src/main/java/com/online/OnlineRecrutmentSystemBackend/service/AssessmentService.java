package com.online.OnlineRecrutmentSystemBackend.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.OnlineRecrutmentSystemBackend.model.Assessment;
import com.online.OnlineRecrutmentSystemBackend.repository.AssessmentRepo;

@Service
public class AssessmentService {
   @Autowired
   AssessmentRepo ar;
   public boolean isRegisterAssessment(Assessment a)
   {
	   return ar.isRegisterAssessment(a);
   }
   public boolean isUpdateAssessment(int id,Assessment a)
   {
	   return ar.isUpdateAssessment(id,a);		   
   }
   public boolean isDeleteAssessment(int id)
   {
	   return ar.isDeleteAssessment(id);
   }
   public List<Assessment> getAllAssessment()
   {
	   return ar.getAllAssessment();
   }
   public Optional<List<Assessment>> getAssessmentBySid(int sid)
   {
	   return ar.getAssessmentBySid(sid);
   }
}
