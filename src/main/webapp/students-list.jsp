<%@ page language="java" import="java.util.*" %>
<%@ page import="com.shraddhagosavi.crudapp1.model.Students" %>

<html>
<head>
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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

<body class="container mt-4">
<h2 class="text-center mb-3">MVC CRUD APPLICATION</h2>
<h5 class="text-center mb-3">SERVLET + JSP + JDBC</h5>
<%
    String success =(String)request.getParameter("success");
    if(success!=null){
%>
<div class="alert alert-success text-center"><%=success%></div>
<%
    }
%>

<a href="students?action=add" class="btn btn-primary mb-3">
    <i class="fa-solid fa-user-plus me-1"></i> Add Student

</a>

<table  class="table table-bordered table-striped table-hover">
    <thead class="table-dark">
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
            <a href="students?action=edit&id=<%=s.getId()%>" class="btn btn-warning btn-small">
                <i class="fa-solid fa-pen-to-square"></i>
            </a>
            <a href="students?action=delete&id=<%=s.getId()%>"
               onclick="return confirm('Are you sure you want to delete the record')"
               class="btn btn-danger btn-small"
            >
                <i class="fa-solid fa-trash"></i>
            </a>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="5" style="text-align:center;">No students Found</td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>
