<%@page isErrorPage="true" %>
<html>
<head>
    <title>MVC CRUD APPLICATION</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
</head>
<body class="container mt-4">
<h3 class="text-danger">Something Wrong Happened! </h3>
<h5 class="text-muted mb-4" >Encountered some issue processing request</h5>
<%
String errorMessage=(String)request.getAttribute("errorMessage");
Throwable errorCause=(Throwable) request.getAttribute("errorCause");
exception=(Throwable) request.getAttribute("errorException");

%>
<div class="card">

    <div class="card-header bg-dark text-light">
        Debugging Information
    </div>
    <div class="card-body">
        <p><strong>Message</strong></p>
        <pre><%= (errorMessage !=null ? errorMessage : " ")%></pre>

        <%
            if (errorCause != null) {
        %>
        <p><strong>Root Cause</strong></p>
        <pre><%= errorCause %></pre>
        <%
        } else if (exception != null) {
        %>
        <p><strong>Main Exception</strong></p>
        <pre><%= exception %></pre>
        <%
        } else {
        %>

        <pre>No technical Error Found</pre>
        <%
            }
        %>






        <a href="students?action=list" class="btn  btn-primary">Go Back</a>
    </div>
</div>




</body>
</html>