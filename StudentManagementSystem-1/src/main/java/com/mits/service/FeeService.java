package com.mits.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mits.model.Fee;
import com.mits.repository.FeeRepository;

@Service
public class FeeService {

    @Autowired
    private FeeRepository repo;

    public List<Fee> findAllFees() {
        return repo.findAll();
    }

    public Fee saveFee(Fee fee) {
        return repo.save(fee);
    }
}
