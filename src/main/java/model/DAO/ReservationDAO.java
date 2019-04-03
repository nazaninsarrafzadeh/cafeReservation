package model.DAO;

import model.DTO.Reservation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by nazanin on 3/31/2019.
 */
public class ReservationDAO {
    private Connection connection;
   // private ArrayList<Restaurant> records=new ArrayList<Restaurant>();

    public ReservationDAO(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection= DriverManager.getConnection("jdbc:mysql://localhost/reservation?useUnicode=true&characterEncoding=UTF-8","root","");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertReservation(Reservation reservation){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("INSERT INTO reservations (customer_id,cafe_id,num_of_people,date)  VALUES (?,?,?,?)");
            statement.setInt(1,reservation.getCustomerId());
            statement.setInt(2,reservation.getCafeId());
            statement.setInt(3,reservation.getNumOfPeople());
            statement.setString(4,reservation.getDate());
            statement.execute();
        } catch (SQLException e) {
            System.out.println("not inserted");
            e.printStackTrace();
        }
    }
}
