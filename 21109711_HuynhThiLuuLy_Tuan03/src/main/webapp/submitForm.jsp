<%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 9/7/2025
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="iuh.fit.se.tuan03.model.Student" scope="request" />
<jsp:setProperty name="student" property="*" />

<jsp:forward page="displayStudent.jsp" />
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
