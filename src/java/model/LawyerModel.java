/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dto.LawyerDTO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sachin
 */
public class LawyerModel {
    public static ArrayList<LawyerDTO> searchByCity(String city) throws SQLException{
        ArrayList<LawyerDTO> lawyerList=new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system","root","");
            PreparedStatement ps=con.prepareStatement("select * from lawyer where lower(address) like ? or upper(address) like ?");
            String pattern="%"+city+"%";
            System.out.println(pattern);
            ps.setString(1, pattern);
            ps.setString(2, pattern);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                LawyerDTO lawyer=new LawyerDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
                lawyerList.add(lawyer);
            }
        } catch (ClassNotFoundException ex) {
            //ex.printStackTrace();
           }
        catch (SQLException ex) {
            //ex.printStackTrace();
           }
        
                
        return lawyerList;
    }
    public static ArrayList<LawyerDTO> searchByName(String name) throws SQLException{
        ArrayList<LawyerDTO> lawyerList=new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system","root","");
            PreparedStatement ps=con.prepareStatement("select * from lawyer where lower(name) like ? or upper(name) like ?");
            String pattern="%"+name+"%";
            System.out.println(pattern);
            ps.setString(1, pattern);
            ps.setString(2, pattern);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                LawyerDTO lawyer=new LawyerDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
                lawyerList.add(lawyer);
            }
        } catch (ClassNotFoundException ex) {
            //ex.printStackTrace();
           }
        catch (SQLException ex) {
            //ex.printStackTrace();
           }
        
                
        return lawyerList;
    }

    public static ArrayList<LawyerDTO> searchByExpertise(String expertise) throws SQLException{
        ArrayList<LawyerDTO> lawyerList=new ArrayList<>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lawyer_hiring_system","root","");
            PreparedStatement ps=con.prepareStatement("select * from lawyer where lower(expertise) like ? or upper(expertise) like ?");
            String pattern="%"+expertise+"%";
            System.out.println(pattern);
            ps.setString(1, pattern);
            ps.setString(2, pattern);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                LawyerDTO lawyer=new LawyerDTO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
                lawyerList.add(lawyer);
            }
        } catch (ClassNotFoundException ex) {
            //ex.printStackTrace();
           }
        catch (SQLException ex) {
            //ex.printStackTrace();
           }
        
                
        return lawyerList;
    }

}
