/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectdb;

import java.sql.*;
import javax.swing.*;

public class ProjectDB  {
static inseart fram ;
static interface_bank f ;
    public static void main(String[] args) {
      fram = new inseart();
      fram.setSize(450, 600);
      fram.setVisible(false);
      fram.setLocationRelativeTo(null);
      fram.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      
      
      f = new interface_bank();
      f.setVisible(true);
      f.setLocationRelativeTo(null);
      f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
      
   
    }
    
    public static void insertMYSQL() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.jdbc.Driver");  
           Connection con=DriverManager.getConnection(  
           "jdbc:mysql://localhost:3306/project?useTimezone=true&serverTimezone=UTC","root","ohod1234");  
           Statement stmt = con.createStatement(); 
    try {
    stmt = con.createStatement();
    String sql = "INSERT INTO client VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
    
    // insert the value from the GUI into MySQL 
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setInt(1, Integer.parseInt(fram.Id_t.getText()));
    pstmt.setString(2, fram.name_t.getText());
    pstmt.setString(3, fram.DateBrith_t.getText());
    pstmt.setString(4, fram.nationnality_t.getText());
    pstmt.setInt(5, Integer.parseInt(fram.street_t.getText()));
    pstmt.setString(6, fram.city_t.getText());
    pstmt.setString(7, fram.neighbordhood_t.getText());
    pstmt.setInt(8, Integer.parseInt(fram.postalcode_t.getText()));
    pstmt.setInt(9, Integer.parseInt(fram.phoneNumber_t.getText()));
    pstmt.setString(10, fram.email_t.getText());
   
       
    String income = fram.incom_combo.getSelectedItem().toString();// to get the iteme from combo box
    pstmt.setInt(11, Integer.parseInt(income));
    pstmt.setInt(12, 4016);
    
    
    
    pstmt.executeUpdate();
   
   
            JOptionPane.showMessageDialog(null
                 , "The request has been successfully completed for ID number "
                         +fram.Id_t.getText()+
                         " \n Thank you for choosing UJ bank");

    }catch(SQLException se){
//Handle errors for JDBC 
        se.printStackTrace();
    }
    catch(Exception e){
//Handle errors for Class.forName 
        e.printStackTrace();
          JOptionPane.showMessageDialog(null
                 , "An error has occurred \n Try again!");
    }
    
    finally{
//finally block used to close resources 
    try{
        if(stmt!=null)
            con.close();
    }catch(SQLException se){
            JOptionPane.showMessageDialog(null
                 , "An error has occurred \n Try again!");
}// do nothing
    try{
        if(con!=null)
            con.close();
     }catch(SQLException se){   
        se.printStackTrace();
            JOptionPane.showMessageDialog(null
                 , "An error has occurred \n Try again!");
}//end finally try
}//end try System.out.println("Goodbye!"); 
    }
}
