package com.online.OnlineRecrutmentSystemBackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.online.OnlineRecrutmentSystemBackend.model.User;
import com.online.OnlineRecrutmentSystemBackend.service.AuthService;

import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = "*")
public class AuthController {

    @Autowired
    private AuthService serv;

    @PostMapping("/login")
    public ResponseEntity<User> login(@RequestBody User user,HttpSession session) {
    	

        User status = serv.login(user);
        //System.out.println("Login");
        if (status != null) {
        	session.setAttribute("user",status );
            return ResponseEntity.ok(status);   
        } else {
            System.out.println("Invalid Login");
            return ResponseEntity.notFound().build(); 
        }
    }
    @PostMapping("/logout")
    public ResponseEntity<String> logout(HttpSession session) {

        session.invalidate();

        return ResponseEntity.ok("Logout Successfully");
    }
}