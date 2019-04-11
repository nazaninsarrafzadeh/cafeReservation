package controller.restaurant;

import model.DAO.ReservationDAO;
import model.DTO.Reservation;

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

        HttpSession session = request.getSession();
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        if (session.getAttribute("customer_id")== null){
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
        else {
            int numOfPeople= Integer.parseInt(request.getParameter("people"));
            String date=request.getParameter("date");
            int customerId = Integer.parseInt(String.valueOf(session.getAttribute("customer_id")));

            Reservation reservation = new Reservation();
            reservation.setDate(date);
            reservation.setNumOfPeople(numOfPeople);
            reservation.setCustomerId(customerId);

            ReservationDAO reservationDAO = new ReservationDAO();
            reservationDAO.insertReservation(reservation);
        }

    }
}
