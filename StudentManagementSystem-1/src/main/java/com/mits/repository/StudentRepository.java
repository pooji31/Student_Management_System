package com.mits.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mits.model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

    List<Student> findByNameContainingIgnoreCase(String name);

    long countByStatus(String status);

} 