package com.mits.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Fee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private Integer studentId;
    private String studentName;
    private Double total;
    private Double paid;
    private Double pending;
    private String dueDate;
    
    public Fee() {
		// TODO Auto-generated constructor stub
	}

	public Fee(Integer studentId, String studentName, Double total, Double paid, Double pending, String dueDate) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.total = total;
		this.paid = paid;
		this.pending = pending;
		this.dueDate = dueDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getStudentId() {
		return studentId;
	}

	public void setStudentId(Integer studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public Double getPaid() {
		return paid;
	}

	public void setPaid(Double paid) {
		this.paid = paid;
	}

	public Double getPending() {
		return pending;
	}

	public void setPending(Double pending) {
		this.pending = pending;
	}

	public String getDueDate() {
		return dueDate;
	}

	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
    
    
}
