<%-- 
    Document   : view_by_course_outcome
    Created on : May 12, 2025, 4:17:32 PM
    Author     : matim
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entity.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Student By Course Outcome Page</title>
    </head>
    <body>
        <h1>View Student By Course Outcome</h1>
        <%
            List<Student> student = (List<Student>)request.getAttribute("student");
        %>
        <table border="1">
            <th>ID</th>
            <th>NAME</th>
            <th>EMAIL</th>
            <th>COURSE NAME</th>
            <th>COURSE CODE</th>
            <%
                for(int i = 0; i<student.size();i++){
                Student students = student.get(i);
                Long id = students.getId();
                String name = students.getName();
                String email = students.getEmail();
                String course = students.getCourseName();
                String code = students.getCourseCode();
                
            %>
            <tr>
                <td><%= id%></td>
                <td><%= name%></td>
                <td><%= email%></td>
                <td><%= course%></td>
                <td><%= code%></td>
            </tr>
            <%
                }
            %>
            
        </table>
            <ul>
                <li><a href="menu.jsp">MENU</a></li>
            </ul>
    </body>
</html>
