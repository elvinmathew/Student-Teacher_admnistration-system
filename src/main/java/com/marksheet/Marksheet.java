package com.marksheet;

import jakarta.persistence.*;
import lombok.ToString;

@Entity
@Table(name = "Marksheet")
public class Marksheet {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int m_id;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "s_id")
    private Student student;
    private int Physics;
    private int Chemistry;
    private int Mathematics;
    private static int tot_mks=300;

    public Marksheet(int m_id, Student student, int physics, int chemistry, int mathematics) {
        this.m_id = m_id;
        this.student = student;
        Physics = physics;
        Chemistry = chemistry;
        Mathematics = mathematics;
    }

    public Marksheet() {
    }

    public int getM_id() {
        return m_id;
    }

    public void setM_id(int m_id) {
        this.m_id = m_id;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public int getPhysics() {
        return Physics;
    }

    public void setPhysics(int physics) {
        Physics = physics;
    }

    public int getChemistry() {
        return Chemistry;
    }

    public void setChemistry(int chemistry) {
        Chemistry = chemistry;
    }

    public int getMathematics() {
        return Mathematics;
    }

    public void setMathematics(int mathematics) {
        Mathematics = mathematics;
    }

    public static int getTot_mks() {
        return tot_mks;
    }

    public static void setTot_mks(int tot_mks) {
        Marksheet.tot_mks = tot_mks;
    }

    @Override
    public String toString() {
        return "Marksheet{" +
                "m_id=" + m_id +
                ", student=" + student +
                ", Physics=" + Physics +
                ", Chemistry=" + Chemistry +
                ", Mathematics=" + Mathematics +
                '}';
    }
}