package com.mits.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mits.model.Student;
import com.mits.repository.StudentRepository;

@Service
public class StudentService {

    @Autowired
    private StudentRepository repository;

    public Student saveStudent(Student student) {
        return repository.save(student); // built-in
    }

    public Student findById(int id) {
        return repository.findById(id).orElse(null); // built-in
    }

    public List<Student> findAllStudents() {
        return repository.findAll(); // built-in
    }

    public void deleteStudent(int id) {
        repository.deleteById(id); // built-in
    }

    public List<Student> searchByName(String keyword) {
        return repository.findByNameContainingIgnoreCase(keyword); // custom
    }

    public long totalStudents() {
        return repository.count(); // built-in
    }

    public long activeStudents() {
        return repository.countByStatus("Active"); // custom
    }

    public long totalCourses() {
        return repository.findAll()
                         .stream()
                         .map(Student::getCourse)
                         .distinct()
                         .count();
    }
}
