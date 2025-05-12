/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.model;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.StudentFacadeLocal;
import za.ac.tut.entity.Student;

/**
 *
 * @author matim
 */
public class AddStudentsServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String courseName = request.getParameter("course");
        String courseCode = request.getParameter("code");
        
        Student student = creatStudent(id,name,email,courseName,courseCode);
        sfl.create(student);
        
        RequestDispatcher disp = request.getRequestDispatcher("add_student_outcome.jsp");
  
    }

    private Student creatStudent(Long id, String name, String email, String courseName, String courseCode) {
        Student student = new Student();
        student.setId(id);
        student.setName(name);
        student.setEmail(email);
        student.setCourseName(courseName);
        student.setCourseCode(courseCode);
        return  student;
    }

}
