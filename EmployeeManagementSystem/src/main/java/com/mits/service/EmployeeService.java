package com.mits.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mits.model.Employee;
import com.mits.repository.EmployeeRepository;

@Service
public class EmployeeService {

    @Autowired
    private EmployeeRepository repo;

    public Employee saveEmployee(Employee employee){
        return repo.save(employee);
    }

    public boolean login(String email,String password){
        return repo.existsByEmailAndPassword(email,password);
    }

    public Optional<Employee> findByEmail(String email){
        return repo.findByEmail(email);
    }

    public List<Employee> findAll(){
        return repo.findAll();
    }

    public Employee findById(int id){
        return repo.findById(id).orElse(null);
    }

    public void delete(int id){
        repo.deleteById(id);
    }

}