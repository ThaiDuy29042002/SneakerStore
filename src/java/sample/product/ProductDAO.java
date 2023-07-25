/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author tuan3
 */
public class ProductDAO {
    
    private static final String GET_LIST = "SELECT * FROM Sneaker";
    

    public List<ProductDTO> getList() throws SQLException, ClassNotFoundException {
        List<ProductDTO> listpro = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        
        try{
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(GET_LIST);
            rs = ptm.executeQuery();
            while(rs.next()){
                String sneakerID = rs.getString("sneakerID");
                String sneakerName = rs.getString("sneakerName");
                String brand = rs.getString("brand");
                int quantity = rs.getInt("quantity");
                int price = rs.getInt("price");
                int size = rs.getInt("size");
                listpro.add(new ProductDTO(sneakerID, sneakerName, brand, quantity, price, size));
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ptm!=null) ptm.close();
            if(conn!=null) conn.close();
        }
        return listpro;
    }
    
        
    
    
}
