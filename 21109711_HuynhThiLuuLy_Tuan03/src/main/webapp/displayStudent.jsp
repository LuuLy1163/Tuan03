<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="student" class="model.Student" scope="request" />

<html>
<head><title>Student Info</title></head>
<body>
<h2>Student Registration Details</h2>
<p>Full Name: <jsp:getProperty name="student" property="firstname"/> <jsp:getProperty name="student" property="lastname"/></p>
<p>Date of Birth: <jsp:getProperty name="student" property="day"/> / <jsp:getProperty name="student" property="month"/> / <jsp:getProperty name="student" property="year"/></p>
<p>Email: <jsp:getProperty name="student" property="email"/></p>
<p>Mobile: <jsp:getProperty name="student" property="mobile"/></p>
<p>Gender: <jsp:getProperty name="student" property="gender"/></p>
<p>Address: <jsp:getProperty name="student" property="address"/></p>
<p>City: <jsp:getProperty name="student" property="city"/></p>
<p>State: <jsp:getProperty name="student" property="state"/></p>
<p>Country: <jsp:getProperty name="student" property="country"/></p>
<p>Course applied for: <jsp:getProperty name="student" property="course"/></p>

<h3>Qualification</h3>
<ul>
    <li>Class X: <jsp:getProperty name="student" property="board1"/> - <jsp:getProperty name="student" property="percent1"/>% - <jsp:getProperty name="student" property="year1"/></li>
    <li>Class XII: <jsp:getProperty name="student" property="board2"/> - <jsp:getProperty name="student" property="percent2"/>% - <jsp:getProperty name="student" property="year2"/></li>
    <li>Graduation: <jsp:getProperty name="student" property="board3"/> - <jsp:getProperty name="student" property="percent3"/>% - <jsp:getProperty name="student" property="year3"/></li>
    <li>Masters: <jsp:getProperty name="student" property="board4"/> - <jsp:getProperty name="student" property="percent4"/>% - <jsp:getProperty name="student" property="year4"/></li>
</ul>

<p>Hobbies:
    <%
        String[] hobbies = student.getHobbies();
        if(hobbies != null){
            for(String h : hobbies){
                out.print(h + " ");
            }
        }
    %>
    <br>Others: <jsp:getProperty name="student" property="otherHobby"/>
</p>
</body>
</html>
