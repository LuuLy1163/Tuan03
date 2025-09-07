<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration Form</title>
    <style>
        body {
            background-color: #aee2f5;
            font-family: Arial, sans-serif;
        }
        .container {
            width: 800px;
            margin: auto;
            padding: 20px;
            background: #d8f3f7;
            border-radius: 10px;
            box-shadow: 0 0 10px #888;
        }
        label {
            display: inline-block;
            width: 150px;
            margin-top: 10px;
        }
        input, select, textarea {
            padding: 5px;
            margin: 5px 0;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 15px;
        }
        table, th, td {
            border: 1px solid #333;
        }
        th, td {
            padding: 8px;
            text-align: center;
        }
        .btn {
            margin-top: 15px;
            padding: 8px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-submit {
            background: #4CAF50;
            color: white;
        }
        .btn-reset {
            background: #f44336;
            color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Student Registration Form</h2>
    <form action="submitForm.jsp" method="post">
        <label>First name:</label>
        <input type="text" name="firstname" maxlength="30" required><br>

        <label>Last name:</label>
        <input type="text" name="lastname" maxlength="30" required><br>

        <label>Date of Birth:</label>
        <select name="day">
            <option>Day</option>
            <% for(int i=1;i<=31;i++){ %>
            <option><%=i%></option>
            <% } %>
        </select>
        <select name="month">
            <option>Month</option>
            <% for(int i=1;i<=12;i++){ %>
            <option><%=i%></option>
            <% } %>
        </select>
        <select name="year">
            <option>Year</option>
            <% for(int i=1980;i<=2024;i++){ %>
            <option><%=i%></option>
            <% } %>
        </select><br>

        <label>Email:</label>
        <input type="email" name="email"><br>

        <label>Mobile number:</label>
        <input type="text" name="mobile" maxlength="10" pattern="[0-9]{10}"><br>

        <label>Gender:</label>
        <input type="radio" name="gender" value="Male"> Male
        <input type="radio" name="gender" value="Female"> Female<br>

        <label>Address:</label>
        <textarea name="address" rows="3" cols="30"></textarea><br>

        <label>City:</label>
        <input type="text" name="city" maxlength="30"><br>

        <label>Pin code:</label>
        <input type="text" name="pincode" maxlength="6" pattern="[0-9]{6}"><br>
        <label>State:</label>
        <input type="text" name="state" maxlength="30"><br>

        <label>Country:</label>
        <input type="text" name="country" value="India"><br>

        <label>Hobbies:</label>
        <input type="checkbox" name="hobbies" value="Drawing"> Drawing
        <input type="checkbox" name="hobbies" value="Singing"> Singing
        <input type="checkbox" name="hobbies" value="Dancing"> Dancing
        <input type="checkbox" name="hobbies" value="Sketching"> Sketching
        <input type="checkbox" name="hobbies" value="Others"> Others
        <input type="text" name="otherHobby"><br>

        <h3>Qualification</h3>
        <table>
            <tr>
                <th>Sl.No.</th>
                <th>Examination</th>
                <th>Board</th>
                <th>Percentage</th>
                <th>Year of Passing</th>
            </tr>
            <tr>
                <td>1</td><td>Class X</td>
                <td><input type="text" name="board1"></td>
                <td><input type="text" name="percent1"></td>
                <td><input type="text" name="year1"></td>
            </tr>
            <tr>
                <td>2</td><td>Class XII</td>
                <td><input type="text" name="board2"></td>
                <td><input type="text" name="percent2"></td>
                <td><input type="text" name="year2"></td>
            </tr>
            <tr>
                <td>3</td><td>Graduation</td>
                <td><input type="text" name="board3"></td>
                <td><input type="text" name="percent3"></td>
                <td><input type="text" name="year3"></td>
            </tr>
            <tr>
                <td>4</td><td>Masters</td>
                <td><input type="text" name="board4"></td>
                <td><input type="text" name="percent4"></td>
                <td><input type="text" name="year4"></td>
            </tr>
        </table>

        <label>Course applies for:</label>
        <input type="radio" name="course" value="BCA"> BCA
        <input type="radio" name="course" value="B.Com"> B.Com
        <input type="radio" name="course" value="B.Sc"> B.Sc
        <input type="radio" name="course" value="B.A"> B.A<br>

        <input type="submit" value="Submit" class="btn btn-submit">
        <input type="reset" value="Reset" class="btn btn-reset">
    </form>
</div>
</body>
</html>
