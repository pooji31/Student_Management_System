package com.mits.controller;

import java.util.List;
import java.util.Optional;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mits.model.Employee;
import com.mits.service.EmployeeService;

@Controller
public class EmployeeController {

    @Autowired
    EmployeeService service;

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/aboutus")
    public String about() {
        return "aboutus";
    }

    @RequestMapping("/contactus")
    public String contact() {
        return "contactus";
    }

    @RequestMapping("/employee")
    public String employee() {
        return "employee";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "admin";
    }

    // Registration

    @RequestMapping("/save")
    public ModelAndView save(@ModelAttribute Employee employee){
        ModelAndView mv=new ModelAndView();
        if(service.findByEmail(employee.getEmail()).isPresent()){
            mv.setViewName("register");
            mv.addObject("status","Email Already Exists");
            return mv;
        }
        service.saveEmployee(employee);
        mv.setViewName("login");
        mv.addObject("validate","Registration Successful");
        return mv;
    }

    // Login

    @RequestMapping("/emplogin")
    public ModelAndView loginEmployee(@RequestParam String email, @RequestParam String password, HttpSession session){
        ModelAndView mv;
        if(email.equals("admin@gmail.com") && password.equals("admin")){
            session.setAttribute("email", email);
            mv=new ModelAndView("admin");
            return mv;
        }
        Optional<Employee> emp=service.findByEmail(email);
        if(emp.isPresent() && emp.get().getPassword().equals(password)){
            session.setAttribute("email", email);
            mv=new ModelAndView("employee");
            return mv;
        }
        mv=new ModelAndView("login");
        mv.addObject("validate","Invalid Credentials");
        return mv;
    }

    // Logout

    @RequestMapping("/emplogout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }

    // View All Employees

    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        ModelAndView mv=new ModelAndView("viewemps");
        mv.addObject("empList",service.findAll());
        return mv;
    }

    // Search Page

    @RequestMapping("/search")
    public String search(){
        return "search";
    }

    // Search Employee

    @RequestMapping("/find")
    public ModelAndView searchEmployee(@RequestParam String email){
        ModelAndView mv=new ModelAndView();
        Optional<Employee> emp=service.findByEmail(email);
        if(emp.isPresent()){
            mv.setViewName("viewemp");
            mv.addObject("employee",emp.get());
        }
        else{
            mv.setViewName("search");
            mv.addObject("status","Employee Not Found");
        }
        return mv;
    }

    // Employee Profile

    @RequestMapping("/findByEmail")
    public ModelAndView profile(HttpSession session){
        String email=(String)session.getAttribute("email");
        ModelAndView mv=new ModelAndView("viewprofile");
        Optional<Employee> emp=service.findByEmail(email);
        if(emp.isPresent()){
            mv.addObject("employee",emp.get());
        }
        return mv;
    }

    // Edit Page

    @RequestMapping("/edit")
    public ModelAndView edit(@RequestParam int id){
        Employee emp=service.findById(id);
        ModelAndView mv=new ModelAndView("edit");
        mv.addObject("employee",emp);
        return mv;
    }

    // Update Employee

    @RequestMapping("/edituser")
    public ModelAndView update(@ModelAttribute Employee employee){
        service.saveEmployee(employee);
        ModelAndView mv=new ModelAndView("viewemps");
        mv.addObject("empList",service.findAll());
        return mv;
    }

    // Delete Employee

    @RequestMapping("/delete")
    public String delete(@RequestParam int id){
        service.delete(id);
        return "redirect:/findAll";
    }

}