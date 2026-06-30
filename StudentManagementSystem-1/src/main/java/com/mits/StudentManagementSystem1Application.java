package com.mits;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.mits")
public class StudentManagementSystem1Application {

	public static void main(String[] args) {
		SpringApplication.run(StudentManagementSystem1Application.class, args);
	}

}
