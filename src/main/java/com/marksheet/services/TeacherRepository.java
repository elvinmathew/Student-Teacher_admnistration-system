package com.marksheet.services;

import com.marksheet.Course;
import com.marksheet.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TeacherRepository extends JpaRepository<Teacher,Integer> {
    public Teacher findByCourse(Course course);

}