package iuh.fit.se.tuan03.dao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import iuh.fit.se.tuan03.model.Student;

@WebServlet("/registration-form")
public class RegistrationForm extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegistrationForm() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy dữ liệu từ form
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String dob = day + "/" + month + "/" + year;

        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String pincode = request.getParameter("pincode");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String[] hobbies = request.getParameterValues("hobbies");
        String otherHobby = request.getParameter("otherHobby");

        String board1 = request.getParameter("board1");
        String percent1 = request.getParameter("percent1");
        String year1 = request.getParameter("year1");

        String board2 = request.getParameter("board2");
        String percent2 = request.getParameter("percent2");
        String year2 = request.getParameter("year2");

        String board3 = request.getParameter("board3");
        String percent3 = request.getParameter("percent3");
        String year3 = request.getParameter("year3");

        String board4 = request.getParameter("board4");
        String percent4 = request.getParameter("percent4");
        String year4 = request.getParameter("year4");

        String course = request.getParameter("course");

        // Tạo đối tượng student
        Student sv = new Student();
        sv.setFirstname(fname);
        sv.setLastname(lname);
        sv.setBirthdate(dob);
        sv.setEmail(email);
        sv.setMobile(mobile);
        sv.setGender(gender);
        sv.setAddress(address);
        sv.setCity(city);
        sv.setPincode(pincode);
        sv.setState(state);
        sv.setCountry(country);
        sv.setHobbies(hobbies);
        sv.setOtherHobby(otherHobby);

        sv.setBoard1(board1);
        sv.setPercent1(percent1);
        sv.setYear1(year1);

        sv.setBoard2(board2);
        sv.setPercent2(percent2);
        sv.setYear2(year2);

        sv.setBoard3(board3);
        sv.setPercent3(percent3);
        sv.setYear3(year3);

        sv.setBoard4(board4);
        sv.setPercent4(percent4);
        sv.setYear4(year4);

        sv.setCourse(course);

        // Gửi đối tượng student tới result JSP
        request.setAttribute("student", sv);
        RequestDispatcher rd = request.getRequestDispatcher("result-form.jsp");
        rd.forward(request, response);
    }
}
