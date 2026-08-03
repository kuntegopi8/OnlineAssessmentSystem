package com.online.OnlineRecrutmentSystemBackend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.online.OnlineRecrutmentSystemBackend.model.*;
import com.online.OnlineRecrutmentSystemBackend.service.AuthService;

@RestController
@RequestMapping("/api/auth")
@CrossOrigin(origins = "http://localhost:7000")
public class AuthController {

    @Autowired
    private AuthService serv;

    @PostMapping("/login")
    public ResponseEntity<User> login(@RequestBody User user) {
    	

        User status = serv.login(user);
        System.out.println("Login");
        if (status != null) {
           
            return ResponseEntity.ok(status);   
        } else {
            System.out.println("Invalid Login");
            return ResponseEntity.notFound().build(); 
        }
    }
}