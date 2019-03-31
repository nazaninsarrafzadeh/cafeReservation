package controller;

import model.DAO.UserDAO;
import model.DTO.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by HP on 1/31/2019.
 */
@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("name");
        String lastname=request.getParameter("lastname");
        String email=request.getParameter("email");
        String password=request.getParameter("pass");

        User users=new User();
        users.setEmail(email);
        users.setLastname(lastname);
        users.setName(name);
        users.setPassword(password);
        UserDAO dao=new UserDAO();
        dao.insert(users);
        HttpSession session=request.getSession();
        session.setAttribute("email",email);
        request.getRequestDispatcher("index.jsp").forward(request,response);

    }
}