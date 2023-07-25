
package sample.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.order.OrderDTO;
import sample.utils.DBUtils;

/**
 *
 * @author Thành Long
 */
public class UserDAO {
    private static final String LOGIN="SELECT fullName,roleID FROM Users WHERE userID=? AND password=?";
    private static final String SEARCH="SELECT userID,fullName,roleID  FROM Users where fullName like ?";
    private static final String DELETE="Delete Users WHERE userID=?";
    private static final String UPDATE="UPDATE Users SET fullName=?, roleID=? WHERE userID=?";
    private static final String INSERT="INSERT INTO Users (userID, fullName, roleID,password) VALUES (?,?,?,?)";
    private static final String DETAIL="SELECT orderID, userID, sneakerID, sneakerName, size,quantity,priceTotal FROM OrderDetail WHERE userID like ?";
    
    
    public static OrderDTO listorder(String userID) throws ClassNotFoundException {
        
      try{
            Connection conn = DBUtils.getConnection();
            PreparedStatement ps = conn.prepareStatement(DETAIL);
            ps.setString(1, userID);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new OrderDTO(
                        rs.getString("orderID"),
                        rs.getString("userID"),
                        rs.getString("sneakerID"),
                        rs.getString("sneakerName"),
                        rs.getInt("size"),
                        rs.getInt("quantity"),
                        rs.getInt("priceTotal")
                );
            }
        } catch (SQLException ex) {
            System.out.println("Query Student error!" + ex.getMessage());
        }
        return null;    
    }
    public UserDTO checkLogin(String userID,String password) throws ClassNotFoundException, SQLException{
        UserDTO user=null;
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try{
            conn=DBUtils.getConnection();
            ps=conn.prepareStatement(LOGIN);
            ps.setString(1, userID);
            ps.setString(2, password);
            rs=ps.executeQuery();
            if(rs.next()){
                String fullName=rs.getString("fullName");
                String roleID=rs.getString("roleID");
                user=new UserDTO(userID, fullName, password, roleID);
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
        if (rs!= null) rs.close();
            if (ps!= null) ps.close();
            if (conn!= null) conn.close();
            
        }
       
        return user;
    }
    public List<UserDTO> getListUser(String search) throws ClassNotFoundException, SQLException{
        List<UserDTO> listUser=new ArrayList<>();
        UserDTO user=null;
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;
        try{
            conn=DBUtils.getConnection();
            ps=conn.prepareStatement(SEARCH);
            ps.setString(1,"%" + search + "%");
            rs=ps.executeQuery();
            while(rs.next()){
                        String userID=rs.getString("userID");
                        String fullName=rs.getString("fullName");
                        String roleID=rs.getString("roleID");
                        String password="****";
                        listUser.add(new UserDTO(userID, fullName, password, roleID));
                    }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(rs!=null) rs.close();
            if(ps!=null) ps.close();
            if(conn!=null) conn.close();
        }
        return listUser;
    }
    
    public boolean deleteUser(String userID) throws SQLException {
        boolean checkDelete=false;
        Connection conn=null;
        PreparedStatement ps=null;
        try{
            conn=DBUtils.getConnection();
            if(conn!=null){
            ps=conn.prepareStatement(DELETE);
            ps.setString(1, userID);
            checkDelete=ps.executeUpdate()>0?true:false;
            }
        }catch(Exception e){
             e.printStackTrace();
        }finally{
             if(ps!= null) ps.close();
            if(conn!= null) conn.close();
        }
        return checkDelete;
    }
    public boolean updateUser(UserDTO updateUser) throws SQLException {
        boolean checkUpdate=false;
        Connection conn=null;
        PreparedStatement ps= null;
        try{
            conn=DBUtils.getConnection();
            if(conn!=null){
                ps=conn.prepareStatement(UPDATE);
                ps.setString(1, updateUser.getFullName());
                ps.setString(2, updateUser.getRoleID());
                ps.setString(3, updateUser.getUserID());
                checkUpdate=ps.executeUpdate()>0?true:false;
               
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if(ps!= null) ps.close();
            if(conn!= null) conn.close();
        }
        return checkUpdate;
    } 
    public boolean insert(UserDTO user) throws SQLException, ClassNotFoundException {
        boolean check=false;
        Connection conn=null;
        PreparedStatement ps=null;
        try{
            conn=DBUtils.getConnection();
            if(conn!=null){
                ps=conn.prepareStatement(INSERT);
                ps.setString(1, user.getUserID());
                ps.setString(2, user.getFullName());
                ps.setString(3, user.getRoleID());
                ps.setString(4, user.getPassword());
                check=ps.executeUpdate()>0?true:false;
            }
        }finally{
             if(ps!= null) ps.close();
            if(conn!= null) conn.close();
        }
        return check;
    }
}
