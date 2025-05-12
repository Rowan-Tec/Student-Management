/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package za.ac.tut.model;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
public class ViewByCourseServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String code = request.getParameter("code");
        List<Student> student=sfl.getStudentsByCourse(code);
        
        request.setAttribute("student",student);
        
        RequestDispatcher disp = request.getRequestDispatcher("view_by_course_outcome.jsp");
        disp.forward(request, response);
    }

}
