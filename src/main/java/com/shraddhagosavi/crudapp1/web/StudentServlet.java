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
                case "add": showNewForm(req,resp);
                    break;
                case "edit":showEditForm(req,resp);
                    break;
                case "delete":deleteStudents(req, resp);
                    break;
                case "insert":insertStudents(req,resp);
                    break;
                case "update":updateStudents(req,resp);
                    break;
                default:listStudents(req,resp); //case"list";

            }
        }catch(DAOException e){
            req.setAttribute("errorMessage",e.getMessage());
            req.setAttribute("errorCause",e.getCause());
            req.setAttribute("errorException",e);
            e.printStackTrace();
            req.getRequestDispatcher("error.jsp").forward(req,resp);
        }
    }
    private void showNewForm(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException{

        req.getRequestDispatcher("students-form.jsp").forward(req,resp);
    }

    private void showEditForm(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException{

      int id =Integer.parseInt(req.getParameter("id"));
      Students student =StudentsDAO.getStudentById(id);
      req.setAttribute("student",student);
      req.getRequestDispatcher("students-form.jsp").forward(req,resp);
    }



    private void listStudents(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException{
         List<Students> studentlist =StudentsDAO.getAllStudents();
         req.setAttribute("students",studentlist);
         req.getRequestDispatcher("students-list.jsp").forward(req,resp);
    }

    private void deleteStudents(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException{
       int id=Integer.parseInt(req.getParameter("id"));
       StudentsDAO.delete(id);
       resp.sendRedirect("students?action=list&success=Deleted Successfully");
    }
    private void insertStudents(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException{
        String name=req.getParameter("name");
        String email=req.getParameter("email");
        String mobile=req.getParameter("mobile");

        StudentsDAO.insert(new Students(name.trim(),email.trim(),mobile.trim()));
        resp.sendRedirect("students?action=list&success=Inserted Successfully");
    }

    private void updateStudents(HttpServletRequest req,HttpServletResponse resp)throws ServletException, IOException{
        int id=Integer.parseInt(req.getParameter("id"));
        String name=req.getParameter("name");
        String email=req.getParameter("email");
        String mobile=req.getParameter("mobile");

        StudentsDAO.update(new Students(id,name.trim(),email.trim(),mobile.trim()));
        resp.sendRedirect("students?action=list&success=Updated Successfully");
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
