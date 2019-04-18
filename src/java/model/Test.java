/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dto.LawyerDTO;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sachin
 */
public class Test {
    public static void main(String[] args) throws SQLException {
        ArrayList<LawyerDTO> lowyerList=LawyerModel.searchByCity("elhi");
        
    }
}
