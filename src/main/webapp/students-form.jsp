<%@ page import="com.shraddhagosavi.crudapp1.model.Students" %>
<html>
   <head>
       <title mb-4>MVC CRUD APPLICATION</title>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
   </head>
   <body class="container mb-4 ">
   <h2 class="text-center mb-3">MVC CRUD APPLICATION</h2>
   <h5 class="text-center mb-3">SERVLET + JSP + JDBC</h5>



   <%

       Students student=(Students)request.getAttribute("student");
       boolean isEdit = (student !=null);
   %>

   <h4><%=(isEdit? "Edit" : "Add")%> Student</h4>





   <form action="students?action=<%=(isEdit? "update" : "insert")%>" method="post">

       <%
          if(isEdit){
   %>
           <input type="hidden" name="id" value="<%=student.getId()%>">
       <%
          }

       %>

       <div class="mb-3">
       <label class="form-label">Name</label>
       <input type="text" name="name"   class="form-control"  value="<%=(student!=null) ? student.getName() : "" %>" placeholder="Enter Name" >
       </div>

       <div class="mb-3">
       <label class="form-label">Email</label>
              <input type="email" name="email" class="form-control" value="<%=(student!=null) ? student.getEmail() : "" %>"  placeholder="Enter Email" >
       </div>

       <div class="mb-3">
       <label class="form-label">Mobile</label>
       <input type="text" name="mobile" class="form-control" value="<%=(student!=null) ? student.getMobile() : "" %>"  placeholder="Enter Mobile" >
       </div>

       <button type="submit" class="btn btn-success">Save</button>
       <a href="students"  class="btn btn-secondary">Cancel</a>
   </form>
   </body>
</html>