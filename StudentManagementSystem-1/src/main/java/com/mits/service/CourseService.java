package com.mits.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mits.model.Course;
import com.mits.repository.CourseRepository;

@Service
public class CourseService {

    @Autowired
    private CourseRepository repo;

    public List<Course> findAllCourses() {
        return repo.findAll();
    }

    public Course saveCourse(Course course) {
        return repo.save(course);
    }
}