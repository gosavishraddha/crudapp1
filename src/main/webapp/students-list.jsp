<%@ page language="java" import="java.util.*" %>
<%@ page import="com.shraddhagosavi.crudapp1.model.Students" %>

<html>
<head>
    <title>Document</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            margin-right: 8px;
            text-decoration: none;
            color: blue;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
<h2>MVC CRUD APPLICATION</h2>
<h5>SERVLET + JSP + JDBC</h5>

<a href="students?action=add">Add Student</a>

<table>
    <thead>
    <tr>
        <th>#</th>
        <th>Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Action</th>
    </tr>
    </thead>

    <tbody>
    <%
        int cnt = 1;
        List<Students> students = (List<Students>)request.getAttribute("students");

        if (students != null && !students.isEmpty()) {
            for (Students s : students) {
    %>
    <tr>
        <td><%= cnt++ %></td>
        <td><%= s.getName() %></td>
        <td><%= s.getEmail() %></td>
        <td><%= s.getMobile() %></td>
        <td>
            <a href="students?action=edit&id=<%=s.getId()%>">Update</a>
            <a href="students?action=delete&id=<%=s.getId()%>">Delete</a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5" style="text-align:center;">No students</td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
