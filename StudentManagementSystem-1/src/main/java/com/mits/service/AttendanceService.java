package com.mits.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mits.model.Attendance;
import com.mits.repository.AttendanceRepository;

@Service
public class AttendanceService {

    @Autowired
    private AttendanceRepository repo;

    public List<Attendance> findAllAttendance() {
        return repo.findAll();
    }

    public Attendance saveAttendance(Attendance attendance) {
        return repo.save(attendance);
    }
}
