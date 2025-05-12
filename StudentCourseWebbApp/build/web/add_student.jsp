<%-- 
    Document   : add_student
    Created on : May 12, 2025, 2:07:48 PM
    Author     : matim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student Page</title>
    </head>
    <body>
        <h1>Add Student</h1>
        <form action="AddStudentsServlet.do" method="POST">
            <table>
               
                <tr>
                    <th>Full name</th>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <th>Course Name</th>
                    <td><input type="text" name="course"></td>
                </tr>
                <tr>
                    <th>Course Code</th>
                    <td><input type="text" name="code"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="ADD"></td>
                </tr>
            </table>  
        </form>
    </body>
</html>
