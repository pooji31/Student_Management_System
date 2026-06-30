package com.mits.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mits.model.Attendance;

public interface AttendanceRepository extends JpaRepository<Attendance, Integer>{

}
