package com.online.OnlineRecrutmentSystemBackend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.online.OnlineRecrutmentSystemBackend.model.Assessment;
import com.online.OnlineRecrutmentSystemBackend.model.Question;
import com.online.OnlineRecrutmentSystemBackend.model.Result;
import com.online.OnlineRecrutmentSystemBackend.model.StudentAnswer;
import com.online.OnlineRecrutmentSystemBackend.repository.AssessmentRepo;
import com.online.OnlineRecrutmentSystemBackend.repository.QuestionRepository;
import com.online.OnlineRecrutmentSystemBackend.repository.ResultRepository;

@Service
public class ResultService {

    @Autowired
    ResultRepository resultrepo;

    @Autowired
    QuestionRepository questionrepo;

    @Autowired
    AssessmentRepo arepo;

    public boolean isGenerateResult(Result result, List<StudentAnswer> answers) {

        int score = 0;

        // Fetch all questions of the assessment
        List<Question> questions =
                questionrepo.Answer(result.getAssessmentId());

        
        for (Question q : questions) {

            for (StudentAnswer ans : answers) {

                if (q.getId() == ans.getQuestionid()) {

                    if (q.getCorrect_Answer()
                            .equalsIgnoreCase(ans.getSelectedans())) {

                        score += q.getMarks();
                    }

                    break;
                }
            }
        }

      
        result.setScore(score);

        // Fetch Assessment
        Assessment assessment =arepo.getAssessmentById(result.getAssessmentId());

        
        if (score >= assessment.getEligibility()) {

            result.setEligibilityStatus("Eligible");

        } else {

            result.setEligibilityStatus("Not Eligible");
        }

        
        return resultrepo.saveResult(result);
    }
    
    public List<Result> getStudentResult(int userId)
    {
		return resultrepo.getStudentResult(userId);
    	
    	
    	
    }
}