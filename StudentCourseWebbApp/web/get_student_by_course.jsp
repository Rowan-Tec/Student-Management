<%-- 
    Document   : get_student_by_course
    Created on : May 12, 2025, 4:01:03 PM
    Author     : matim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Student By Course Page</title>
    </head>
    <body>
        <h1>View Student By Course</h1>
        <p>
            Enter a course to view by
        </p>
        <form action="ViewByCourseServlet.do" method="POST">
            <table>
                <tr>
                    <td>Course Code</td>
                    <td><input type="text" name="code"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Search"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
