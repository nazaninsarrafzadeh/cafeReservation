package controller.reservation;

import model.DAO.ReservationDAO;
import model.DTO.Reservation;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * Created by nazanin on 3/31/2019.
 */
@WebServlet("/reservation")
public class ReservationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        HttpSession reservationSession = request.getSession();
        Reservation reservation = (Reservation) reservationSession.getAttribute("reservation");
        int customerId = Integer.parseInt(String.valueOf(session.getAttribute("customer_id")));
        reservation.setCustomerId(customerId);

        ReservationDAO reservationDAO = new ReservationDAO();
        reservationDAO.insertReservation(reservation);

    }
}
