package com.CareerRecommendationSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.*;
import com.CareerRecommendationSystem.model.Assessment;
import com.CareerRecommendationSystem.repository.AssessmentRepo;

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
}
