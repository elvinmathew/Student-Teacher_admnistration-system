<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.marksheet.Teacher" %>
<%@ page import="com.marksheet.Course" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Teacher and Course View</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        h2 {
            color: #333;
            padding: 20px 0;
            font-size: 2em;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }

        th, td {
            padding: 15px;
            border: 1px solid #ccc;
        }

        .nav-button {
            position: fixed;
            top: 20px;
            right: 20px;
            background-color: #2196f3;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 9999;
        }

        .nav-button a {
            color: #fff;
            text-decoration: none;
        }

    </style>
</head>
<body>
    <nav class="nav-button">
        <a href="http://localhost:8080/login">Logout</a>
    </nav>

    <h2>Teacher and Course List</h2>

    <% List<Teacher> teachers = (List<Teacher>) request.getAttribute("teachers"); %>

    <% if (teachers != null && !teachers.isEmpty()) { %>
        <table>
            <thead>
                <tr>
                    <th>Teacher ID</th>
                    <th>Teacher Name</th>
                    <th>Course ID</th>
                    <th>Course Name</th>
                </tr>
            </thead>
            <tbody>
                <% for (Teacher teacher : teachers) { %>
                    <tr>
                        <td><%= teacher.getT_id() %></td>
                        <td><%= teacher.getT_name() %></td>
                        <td><%= teacher.getCourse().getC_id() %></td>
                        <td><%= teacher.getCourse().getC_name() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } else { %>
        <p>No teachers available.</p>
    <% } %>
</body>
</html>
