/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package da;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import model.Country;

/**
 *
 * @author User
 */
public class CountryDa {

    private String host = "jdbc:derby://localhost:1527/Countrydb";
    private String user = "country";
    private String password = "123";
    private Connection conn;
    
    public CountryDa() {
        createConnection();
    }
    
    private void createConnection(){
        try{
            conn = DriverManager.getConnection(host,user,password);
        }catch(SQLException ex){
            System.out.println("cant connect to db");
    }
        
        
        
        
    }
    
     public void createCountry(Country country){
        String sql = "INSERT INTO COUNTRY "
                + "VALUES (?,?,?)";
        try{
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, country.getName());
            stmt.setString(2, country.getOfficialName());
            stmt.setString(3, country.getCapital());
            
            stmt.executeUpdate();
        }catch(SQLException ex){
            
        }
    }
}
