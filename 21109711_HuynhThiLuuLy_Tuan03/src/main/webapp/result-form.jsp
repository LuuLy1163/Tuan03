<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="iuh.fit.se.tuan03.model.Student" %>

<%
    Student s = (Student) request.getAttribute("student");
%>

<html>
<body>
<h2>Student Info</h2>
<p>Name: <%= s.getFirstname() %> <%= s.getLastname() %></p>
<p>DOB: <%= s.getBirthdate() %></p>
<p>Email: <%= s.getEmail() %></p>
<p>Course: <%= s.getCourse() %></p>
</body>
</html>
