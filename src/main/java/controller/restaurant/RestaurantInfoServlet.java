package controller.restaurant;

import model.DAO.RestaurantDAO;
import model.DTO.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by nazanin on 3/31/2019.
 */
@WebServlet("/restaurant-info")
public class RestaurantInfoServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name=request.getParameter("name");
        String address=request.getParameter("address");
        String email=request.getParameter("email");
        String desription=request.getParameter("description");

        Restaurant restaurant = new Restaurant();
        restaurant.setEmail(email);
        restaurant.setName(name);
        restaurant.setAddress(address);
        restaurant.setDescription(desription);
        RestaurantDAO restaurantDAO = new RestaurantDAO();
        restaurantDAO.insertRestaurant(restaurant);
//        HttpSession session=request.getSession();
//        session.setAttribute("email",email);
//        request.getRequestDispatcher("index.jsp").forward(request,response);

    }
}
