package com.mits.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mits.model.Course;

public interface CourseRepository extends JpaRepository<Course, Integer>{

}
