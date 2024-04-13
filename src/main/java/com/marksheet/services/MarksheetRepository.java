package com.marksheet.services;

import com.marksheet.Marksheet;
import com.marksheet.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MarksheetRepository extends JpaRepository<Marksheet,Integer> {

    public Marksheet findByStudent(Student student); //passed the whole obj  because m_id is A.I.
    public void deleteByStudent(Student student);
}