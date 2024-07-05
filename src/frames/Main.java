/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package frames;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Lenovo
 */
public interface Main {
    public static Connection con = getDatConnection();
    LoginFrame loginframe = new LoginFrame();
    mainDashBoard mainDashBoard = new mainDashBoard();
     public static Connection getDatConnection()
    {
        try 
        {
        Class.forName("com.mysql.jdbc.Driver");
              System.out.println("Driver Loaded");
              java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/financesystem","root","admin");    
              return con;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
