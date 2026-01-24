package com.shraddhagosavi.crudapp1.web;

import com.shraddhagosavi.crudapp1.dao.StudentsDAO;
import com.shraddhagosavi.crudapp1.dao.StudentsDAOImp;
import com.shraddhagosavi.crudapp1.exception.DAOException;
import com.shraddhagosavi.crudapp1.model.Students;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = {"/","/students"})
public class StudentServlet  extends HttpServlet {

    private StudentsDAO StudentsDAO;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");

        if(action==null) action="list";
        try {
            switch (action) {
                case "add":
                    break;
                case "edit":
                    break;
                case "delete":
                    break;
                case "insert":
                    break;
                case "update":
                    break;
                default:listStudents(req,resp); //case"list";

            }
        }catch(DAOException e){
            e.printStackTrace();
        }
    }
    private void listStudents(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException{
         List<Students> studentlist =StudentsDAO.getAllStudents();
         req.setAttribute("students",studentlist);
         req.getRequestDispatcher("students-list.jsp").forward(req,resp);
    }

    private void deleteStudents(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException{
        List<Students> studentlist =StudentsDAO.getAllStudents();
        req.setAttribute("students",studentlist);
        req.getRequestDispatcher("students-list.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }

    @Override
    public void init() throws ServletException {
        StudentsDAO =new StudentsDAOImp();
    }
}
