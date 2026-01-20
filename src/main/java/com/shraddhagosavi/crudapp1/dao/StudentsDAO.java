package com.shraddhagosavi.crudapp1.dao;

import com.shraddhagosavi.crudapp1.model.Students;

import java.util.List;

public interface StudentsDAO {
    void insert(Students student);
    void delete(int id);
    Students getStudentById(int id);
    void update(Students student);
    List<Students> getAllStudents();
}
