package com.online.OnlineRecrutmentSystemBackend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.OnlineRecrutmentSystemBackend.model.*;
import com.online.OnlineRecrutmentSystemBackend.repository.QuestionRepository;

@Service
public class QuestionService {
	
	@Autowired
	QuestionRepository questionRepo;
	public boolean isAddQuestion(Question q)
	{
		return questionRepo.isAddQuestion(q);
	}
	
	public boolean isUpdateQuestion(Question q,int id)
	{
		
		return questionRepo.isUpdateQuestion(q, id);
	}
	public List<Question> getAllQuestion(int id)
	{
		return questionRepo.getAllQuestion(id);
	}
	public boolean isDelete(int id)
	{
		return questionRepo.isDelete(id);
	}

}
