/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projectdb;

import java.sql.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class inseart extends JFrame   {
    JLabel Welcome  , Logo1, Id , name , DateBrith , nationnality , street ,
            city , neighbordhood , postalcode , phoneNumber , email , incom ; 
    
     JTextField Id_t , name_t , DateBrith_t , nationnality_t , street_t ,
            city_t , neighbordhood_t , postalcode_t , phoneNumber_t , email_t;
      JComboBox incom_combo;
      
      JPanel all,panel_row , panel_row1 , panel_row2 , panel_row3;
      
    public inseart() {
       super("Insert New Client ");
       setLayout( new BorderLayout());
       
       // add the logo    
       ImageIcon logo = new ImageIcon (getClass().getResource("unnamed.png"));
       Image logo1 = logo.getImage();
       Image lo = logo1.getScaledInstance(100, 100, java.awt.Image.SCALE_SMOOTH);
       logo =  new ImageIcon(lo);
       Logo1 = new JLabel(logo); 
       
       // panal_row conten the name of the bank and logo
       Welcome = new JLabel(" Please fill the following information : ");
       Welcome.setFont(new Font("Serif",Font.BOLD,20));
       panel_row =  new JPanel();
       panel_row.setLayout(new BorderLayout());
       panel_row.add(Logo1 , BorderLayout.NORTH);
       //creat the object from panal1 class  
       panel_row.add(Welcome ,BorderLayout.CENTER);
      add(panel_row ,BorderLayout.NORTH) ;
  
      
      
     Id= new JLabel ("ID Number :",SwingConstants.LEFT ) ;
     Id.setFont(new Font ("Serif",Font.PLAIN ,20));
     Id_t = new JTextField (15);
     
     name= new JLabel ("Name :",SwingConstants.LEFT ) ;
     name.setFont(new Font ("Serif",Font.PLAIN ,20));
     name_t= new JTextField (15);
     
     DateBrith= new JLabel ("Date Of Brith:",SwingConstants.LEFT ) ;
     DateBrith.setFont(new Font ("Serif",Font.PLAIN ,20));
     DateBrith_t= new JTextField (15);
     
     nationnality = new JLabel ("Nationnality:",SwingConstants.LEFT ) ;
     nationnality.setFont(new Font ("Serif",Font.PLAIN ,20));
     nationnality_t= new JTextField (15);
     
      street = new JLabel ("Street:",SwingConstants.LEFT ) ;
      street.setFont(new Font ("Serif",Font.PLAIN ,20));
      street_t= new JTextField (15);
      
      city= new JLabel ("City:",SwingConstants.LEFT ) ;
      city.setFont(new Font ("Serif",Font.PLAIN ,20));
      city_t= new JTextField (15);
      
      neighbordhood= new JLabel ("Neighborhood:",SwingConstants.LEFT ) ;
      neighbordhood.setFont(new Font ("Serif",Font.PLAIN ,20));
      neighbordhood_t= new JTextField (15);
      
      postalcode= new JLabel ("Postal Code:",SwingConstants.LEFT ) ; 
      postalcode.setFont(new Font ("Serif",Font.PLAIN ,20));
      postalcode_t= new JTextField (15);
       
     phoneNumber = new JLabel ("Phone Number :",SwingConstants.LEFT ) ;
     phoneNumber.setFont(new Font ("Serif",Font.PLAIN ,20));
     phoneNumber_t = new JTextField (15); 
     
     email = new JLabel ("Email:",SwingConstants.LEFT ) ;
     email.setFont(new Font ("Serif",Font.PLAIN ,20));
     email_t = new JTextField (15);
     
     incom = new JLabel("Income :");
     incom.setFont(new Font ("Serif",Font.PLAIN ,20));
     
     panel_row1=  new JPanel();
     panel_row1.setLayout(new FlowLayout(FlowLayout.LEFT,10,10));
     panel_row2=  new JPanel();
     panel_row2.setLayout(new FlowLayout(FlowLayout.LEFT,10,10));
     
     panel_row1.add(Id);
     panel_row1.add(Id_t);
     panel_row1.add(name);
     panel_row1.add(name_t);
     panel_row1.add(DateBrith);
     panel_row1.add(DateBrith_t);
     panel_row1.add(nationnality);
     panel_row1.add(nationnality_t);
     panel_row1.add(street);
     panel_row1.add(street_t);
     panel_row2.add(city);
     panel_row2.add(city_t);
     panel_row2.add(neighbordhood);
     panel_row2.add(neighbordhood_t);
     panel_row2.add(postalcode);
     panel_row2.add(postalcode_t);
     panel_row2.add(phoneNumber);
     panel_row2.add(phoneNumber_t);
     panel_row2.add(email);
     panel_row2.add(email_t);
     panel_row2.add(incom);
     
      panel_row2.add(incom_combo = new JComboBox(new String[]{"500","1000",
          "5000","10000","15000","20000","25000","30000" }));
     
     
     all=new JPanel();
     all.setLayout(new GridLayout(1,2,10,10));
     all.add(panel_row1);
     all.add(panel_row2);
     
     
   
     
     add(all,BorderLayout.CENTER);
     
     
       // button 
     JButton Submint = new JButton("Submint");
     JButton Cancel =new JButton("Cancel") ;
       
     panel_row3=  new JPanel();
     panel_row3.setLayout(new FlowLayout(FlowLayout.LEFT,10,10));
     panel_row3.add(Submint);
     panel_row3.add(Cancel);
     
     add(panel_row3,BorderLayout.SOUTH);
     
       
     
  ButtonCo handler = new ButtonCo();
 Cancel.addActionListener(handler);
 
  ButtonSubmint buttonSubmint = new ButtonSubmint();
 Submint.addActionListener(buttonSubmint);
 

      
    }
       private class ButtonCo implements ActionListener {
          @Override
          public void actionPerformed(ActionEvent e) {
            System.exit(0);
       
    }
    }
       
   private class ButtonSubmint implements ActionListener {
          @Override
          public void actionPerformed(ActionEvent e)  {
              ProjectDB Db = new ProjectDB();
              
              try{
              Db.insertMYSQL();}
              catch(ClassNotFoundException | SQLException ex){
          JOptionPane.showMessageDialog(null
                 , "An error has occurred \n Try again!");
                 
              }
                  
              
              
              
          }
    }
   
}
