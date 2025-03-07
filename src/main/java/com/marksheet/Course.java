package com.marksheet;

import jakarta.persistence.*;
import lombok.ToString;

@Entity
@ToString
@Table(name = "Course")
public class Course {
    @Id
    private int c_id;
    private String c_name;

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

}