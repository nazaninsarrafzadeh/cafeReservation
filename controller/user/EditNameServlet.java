package controller.user;

import model.DAO.UserDAO;
import model.DTO.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/EditName")
public class EditNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if (session.getAttribute("customer_id")== null){
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else {
            String name = request.getParameter("username");
            int uid = Integer.parseInt(String.valueOf(session.getAttribute("customer_id")));

            User users = new User();
            users.setName(name);
            UserDAO dao = new UserDAO();
            dao.update(users,uid,"name");
            //HttpSession session=request.getSession();
            //session.setAttribute("email",email);
            //request.getRequestDispatcher("EditProfile.jsp").forward(request,response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
