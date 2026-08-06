package com.online.OnlineRecrutmentSystemBackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.online.OnlineRecrutmentSystemBackend.model.*;
import com.online.OnlineRecrutmentSystemBackend.service.AuthService;

import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = "http://localhost:7000")
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