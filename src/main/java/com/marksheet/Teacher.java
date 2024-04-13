package com.marksheet;

import jakarta.persistence.*;
import lombok.ToString;

@Entity
@ToString
@Table(name = "Teacher")
public class Teacher {
    @Id
    private int t_id;
    private String t_name;
    @OneToOne
    @JoinColumn(name = "c_id")
    private Course course;

    public int getT_id() {
        return t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }


}