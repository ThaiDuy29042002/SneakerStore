
package sample.order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import sample.utils.DBUtils;

/**
 *
 * @author Thành Long
 */
public class OrderDAO {
    private static final String INSERT_DETAILS="INSERT INTO OrderDetail (orderID, sneakerID,userID,sneakerName,size,quantity,priceTotal) VALUES (?,?,?,?,?,?,?)";
    private static final String INSERT="INSERT INTO Order (orderID, daate. userID) VALUES (?,?,?)";
    
    public boolean insertDetails(String orderID, String userID, String sneakerID, String sneakerName, int size, int quantity, int total) throws SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement ps=null;
        try{
            conn=DBUtils.getConnection();
            if(conn!=null){
                ps=conn.prepareStatement(INSERT_DETAILS);
                ps.setString(1, orderID);
                ps.setString(2, userID);
                ps.setString(3, sneakerID);
                ps.setString(4, sneakerName);
                ps.setInt(5, size);
                ps.setInt(6, quantity);
                ps.setInt(7, total);
                check=ps.executeUpdate()>0?true:false;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
             if(ps!= null) ps.close();
            if(conn!= null) conn.close();
        }
        return check;
    }
    
    public boolean insert(String orderID, String UserID) throws SQLException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement ps=null;
        OrderDTO order = new OrderDTO();
        try{
            conn=DBUtils.getConnection();
            if(conn!=null){
                ps=conn.prepareStatement(INSERT);
                ps.setString(1, orderID);
                ps.setString(3, UserID);
                ps.setDate(2, order.getDateBill());
                check=ps.executeUpdate()>0?true:false;
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
             if(ps!= null) ps.close();
            if(conn!= null) conn.close();
        }
        return check;
    }
}
