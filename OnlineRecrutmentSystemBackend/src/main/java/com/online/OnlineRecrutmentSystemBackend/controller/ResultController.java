package com.online.OnlineRecrutmentSystemBackend.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.online.OnlineRecrutmentSystemBackend.model.ExamRequest;
import com.online.OnlineRecrutmentSystemBackend.model.Result;
import com.online.OnlineRecrutmentSystemBackend.model.StudentAnswer;
import com.online.OnlineRecrutmentSystemBackend.model.User;
import com.online.OnlineRecrutmentSystemBackend.service.ResultService;

import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/result")
public class ResultController {

    @Autowired
    ResultService service;

    @PostMapping("/generate")
    public ResponseEntity<String> generateResult(@RequestBody ExamRequest request,
                                                 HttpSession session) {

        User user = (User) session.getAttribute("user");

        if (user == null) {
            return new ResponseEntity<>("Please Login First",
                    HttpStatus.UNAUTHORIZED);
        }

        Result result = new Result();

        result.setUserId(user.getUserId());
        result.setAssessmentId(request.getAssessmentId());

        List<StudentAnswer> answers = request.getAnswers();

        if (service.isGenerateResult(result, answers)) {

            return new ResponseEntity<>("Result Generated Successfully",
                    HttpStatus.OK);
        }

        return new ResponseEntity<>("Unable to Generate Result",
                HttpStatus.BAD_REQUEST);
    }
    
    @GetMapping("/student")
    public ResponseEntity<List<Result>> getResultByStudent(HttpSession session)
    {
    		User user =(User)session.getAttribute("user");
    		 if (user == null)
    		 {
    		        return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
    		   
    		 }
    		 List<Result> list = service.getStudentResult(user.getUserId());
    		 if (!list.isEmpty()) {
    		        return new ResponseEntity<>(list, HttpStatus.OK);
    		    }

    		    return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    		}
    	
    }
