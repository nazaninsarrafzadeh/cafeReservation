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
            connection= DriverManager.getConnection("jdbc:mysql://localhost/reservation","root","");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void insertReservation(Reservation reservation){
        try {
            PreparedStatement statement=connection.prepareStatement
                    ("INSERT INTO reservations (customer_id,date,num_of_people)  VALUES (?,?,?)");
            statement.setInt(1,reservation.getCustomerId());
            statement.setString(2,reservation.getDate());
            statement.setInt(3,reservation.getNumOfPeople());
            statement.execute();
        } catch (SQLException e) {
            System.out.println("not inserted");
            e.printStackTrace();
        }
    }
}
