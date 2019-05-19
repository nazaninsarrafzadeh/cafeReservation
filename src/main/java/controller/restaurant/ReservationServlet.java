package controller.reservation;

import controller.mailer.Mailer;
import credentials.MailCredentials;
import model.DAO.CafeFileDAO;
import model.DAO.ReservationDAO;
import model.DAO.RestaurantDAO;
import model.DAO.UserDAO;
import model.DTO.Reservation;
import model.DTO.Restaurant;
import model.DTO.User;

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
@WebServlet("/reservation")
public class ReservationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        HttpSession reservationSession = request.getSession();
        Reservation reservation = (Reservation) reservationSession.getAttribute("reservation");
        int customerId = Integer.parseInt(String.valueOf(session.getAttribute("customer_id")));
        reservation.setCustomerId(customerId);

        ReservationDAO reservationDAO = new ReservationDAO();
        if (!reservationDAO.alreadyReserved(reservation.getDate(),reservation.getCafeId())){
            reservationDAO.insertReservation(reservation);
            UserDAO dao = new UserDAO();
            User user = dao.getUserById(customerId);
            String to = user.getEmail();
            String sub = "رزرو";
            String msg = "رزرو شما برای تاریخ "+reservation.getDate()+"\n"+" در کافه "+reservationDAO.getCafeNameById(reservation.getCafeId())+"\n"+"باموفقیت ثبت شد";
            Mailer.sendEmail(MailCredentials.from,MailCredentials.username,MailCredentials.pass,
                    to,sub,msg );
        }
        else {
            System.out.println("bilakh");
            RestaurantDAO restaurantDAO = new RestaurantDAO();
            Restaurant restaurant = restaurantDAO.selectRestaurantsById(reservation.getCafeId());
            CafeFileDAO dao = new CafeFileDAO();
            restaurant.setImage(dao.selectImages(reservation.getCafeId()));
            request.setAttribute("restaurant",restaurant);
            request.setAttribute("error","***رزرو در این تاریخ قبلا ثبت شده است***");
            request.getRequestDispatcher("restaurantProf.jsp").include(request,response);
        }

    }
}
