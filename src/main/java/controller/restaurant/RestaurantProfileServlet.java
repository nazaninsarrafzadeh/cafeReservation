package controller.restaurant;

import model.DAO.CafeFileDAO;
import model.DAO.RestaurantDAO;
import model.DTO.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by nazanin on 3/31/2019.
 */
@WebServlet("/restaurant-profile")
public class RestaurantProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        int id = request.getParameter("id");
        RestaurantDAO restaurantDAO = new RestaurantDAO();
        Restaurant restaurant = restaurantDAO.selectRestaurantsById(1);
        CafeFileDAO cafeFileDAO = new CafeFileDAO();
        restaurant.setImage(cafeFileDAO.selectImages(1));
        request.setAttribute("restaurant",restaurant);
        request.getRequestDispatcher("restaurantProf.jsp").forward(request,response);
    }

}
