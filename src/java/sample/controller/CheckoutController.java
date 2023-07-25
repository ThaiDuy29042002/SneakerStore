/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.order.OrderDAO;
import sample.order.OrderDTO;
import sample.product.Cart;
import sample.product.ProductDTO;
import sample.user.UserDTO;

/**
 *
 * @author Thành Long
 */
@WebServlet(name = "CheckoutController", urlPatterns = {"/CheckoutController"})
public class CheckoutController extends HttpServlet {

     private static final String ERROR="error.jsp";
    private static final String SUCCESS="viewBill.jsp";
    private static AtomicInteger ID_GENERATOR = new AtomicInteger(10);
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url=ERROR;
        try{
            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("CART");
            UserDTO currentUser = (UserDTO) session.getAttribute("LOGIN_USER");
            ArrayList<OrderDTO> listtmp = new ArrayList<>();
            OrderDAO dao = new OrderDAO();
            String userID = currentUser.getUserID();
            String orderID= "OR"+ ID_GENERATOR.getAndIncrement();
            boolean checkInsertOrder = dao.insert(orderID, userID);
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            if(checkInsertOrder){
                for(ProductDTO tmp : cart.getCart().values()){
                    boolean checkInsertOrderDetail = dao.insertDetails(orderID, userID, tmp.getSneakerID(), tmp.getSneakerName(), tmp.getSize(), quantity, (int) (tmp.getQuantity() * tmp.getPrice()));
                    OrderDTO pro = new OrderDTO(orderID, userID, tmp.getSneakerID(), tmp.getSneakerName(), tmp.getSize(), quantity, (int) (tmp.getQuantity() * tmp.getPrice()));
                    listtmp.add(pro);
                    if(!checkInsertOrderDetail){
                        break;
                    }
                }
                url = SUCCESS;
                session.setAttribute("Listtemp", listtmp);
                session.removeAttribute("CART");
            }
            
        }catch(Exception e){
            log("Error at CheckoutController" + e.toString());
        }finally{
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
