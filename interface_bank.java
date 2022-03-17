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
public class interface_bank extends JFrame {
    
    public interface_bank(){
    super("Welcome"); 
    
           setLayout( new BorderLayout());
       setSize(800,400);
      
       
       // add the logo    
       ImageIcon logo = new ImageIcon (getClass().getResource("unnamed.png"));
       Image logo1 = logo.getImage();
       Image lo = logo1.getScaledInstance(150, 150, java.awt.Image.SCALE_SMOOTH);
       logo =  new ImageIcon(lo);
       JLabel Logo1 = new JLabel(logo); 
    
      JLabel Welcome = new JLabel(" Welcome To UJ Bank");
       Welcome.setFont(new Font("Serif",Font.BOLD+Font.ITALIC ,50));
       
       JPanel panel_row =  new JPanel();
       panel_row.setLayout(new BorderLayout());
       panel_row.add(Logo1 , BorderLayout.WEST);
       //creat the object from panal1 class  
       panel_row.add(Welcome ,BorderLayout.CENTER);
       add(panel_row ,BorderLayout.NORTH );
       
      JLabel open = new JLabel("<html>You can open an account at UJ Bank  throughthe"
              + " application <br/> easily and quickly .<html>"+"To continue, press the start button :");
     open.setFont(new Font("Serif",Font.BOLD ,30));
     
     
     add(open ,BorderLayout.CENTER);
     
      JButton Submint = new JButton("Start");
     JButton Cancel =new JButton("Cancel") ;
      
      JPanel panel_row3=  new JPanel();
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
              
      ProjectDB.fram.setVisible(true);
      ProjectDB.f.setVisible(false);
      

      

                  
              
              
              
          }
    }
}
