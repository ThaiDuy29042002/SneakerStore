/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.order;

import java.sql.Date;

/**
 *
 * @author My PC
 */
public class OrderDTO {
    private String orderID;
    private String userID;
    private String sneakerID;
    private String sneakerName;
    private int size;
    private int quantity;
    private int priceTotal;
    private Date dateBill;
    
    public OrderDTO() {
    }

    public OrderDTO(String orderID, String userID, String sneakerID, String sneakerName, int size, int quantity, int priceTotal) {
        this.orderID = orderID;
        this.userID = userID;
        this.sneakerID = sneakerID;
        this.sneakerName = sneakerName;
        this.size = size;
        this.quantity = quantity;
        this.priceTotal = priceTotal;
    }

    public String getOrderID() {
        return orderID;
    }

    public void setOrderID(String orderID) {
        this.orderID = orderID;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public String getSneakerID() {
        return sneakerID;
    }

    public void setSneakerID(String sneakerID) {
        this.sneakerID = sneakerID;
    }

    public String getSneakerName() {
        return sneakerName;
    }

    public void setSneakerName(String sneakerName) {
        this.sneakerName = sneakerName;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPriceTotal() {
        return priceTotal;
    }

    public void setPriceTotal(int priceTotal) {
        this.priceTotal = priceTotal;
    }

    public Date getDateBill() {
        return dateBill;
    }

    public void setDateBill(Date dateBill) {
        this.dateBill = dateBill;
    }

    

}
