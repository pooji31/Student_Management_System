package com.mits.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mits.model.Student;
import com.mits.service.AttendanceService;
import com.mits.service.CourseService;
import com.mits.service.FeeService;
import com.mits.service.StudentService;

@Controller
public class StudentController {

    @Autowired
    private StudentService service;
    @Autowired 
    private CourseService courseService;
    @Autowired 
    private AttendanceService attendanceService;
    @Autowired 
    private FeeService feeService;

    @RequestMapping("/")
    public String home(Model model) {
        model.addAttribute("totalStudents", service.totalStudents());
        model.addAttribute("activeStudents", service.activeStudents());
        model.addAttribute("totalCourses", service.totalCourses());
        model.addAttribute("students", service.findAllStudents());
        return "Dashboard";
    }

    @RequestMapping("/register")
    public String register(Model model) {
        model.addAttribute("student", new Student());
        return "RegisterStudent";
    }

    @RequestMapping("/save")
    public String save(Student student) {
        service.saveStudent(student);
        return "redirect:/list";
    }

    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("students", service.findAllStudents());
        return "StudentList";
    }

    @RequestMapping("/view")
    public String view(int id, Model model) {
        model.addAttribute("student", service.findById(id));
        return "ViewStudent";
    }

    @RequestMapping("/edit")
    public String edit(int id, Model model) {
        model.addAttribute("student", service.findById(id));
        return "EditStudent";
    }

    @RequestMapping("/update")
    public String update(Student student) {
        service.saveStudent(student);
        return "redirect:/list";
    }

    @RequestMapping("/delete")
    public String delete(int id) {
        service.deleteStudent(id);
        return "redirect:/list";
    }

    @RequestMapping("/search")
    public String search(String keyword, Model model) {
        model.addAttribute("students", service.searchByName(keyword));
        return "StudentList";
    }

    @RequestMapping("/courses/list")
    public String courseList(Model model) {
        model.addAttribute("courses", courseService.findAllCourses());
        return "CourseList";
    }

    @RequestMapping("/attendance/list")
    public String attendanceList(Model model) {
        model.addAttribute("attendance", attendanceService.findAllAttendance());
        return "AttendanceList";
    }

    @RequestMapping("/fees/list")
    public String feeList(Model model) {
        model.addAttribute("fees", feeService.findAllFees());
        return "FeeList";
    }

    @RequestMapping("/reports")
    public String reports(Model model) {
        model.addAttribute("totalStudents", service.totalStudents());
        model.addAttribute("activeStudents", service.activeStudents());
        model.addAttribute("totalCourses", service.totalCourses());
        return "Reports";
    }

    @RequestMapping("/admin/settings")
    public String adminSettings() {
        return "AdminSettings";
    }
}
