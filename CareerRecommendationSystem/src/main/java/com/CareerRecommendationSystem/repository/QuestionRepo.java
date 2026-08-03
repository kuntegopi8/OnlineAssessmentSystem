package com.CareerRecommendationSystem.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.CareerRecommendationSystem.model.Question;

@Repository
public class QuestionRepo {
   @Autowired
	JdbcTemplate template;
//   public boolean isaddQuestion(int assmentId,Question q)
//   {
//	   int val=template.update("insert into question()")
//   }
}
