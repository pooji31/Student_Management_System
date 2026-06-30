package com.mits.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mits.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee,Integer>{

    boolean existsByEmailAndPassword(String email,String password);

    Optional<Employee> findByEmail(String email);

}