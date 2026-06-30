package com.mits.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mits.model.Fee;

public interface FeeRepository extends JpaRepository<Fee, Integer>{

}
