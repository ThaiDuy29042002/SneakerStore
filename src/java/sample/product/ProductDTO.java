/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.product;

/**
 *
 * @author tuan3
 */
public class ProductDTO {
    private String sneakerID;
    private String sneakerName;
    private String brand;
    private int quantity;
    private int price;
    private int size;

    public ProductDTO() {
    }

    public ProductDTO(String sneakerID, String sneakerName, String brand, int quantity, int price, int size) {
        this.sneakerID = sneakerID;
        this.sneakerName = sneakerName;
        this.brand = brand;
        this.quantity = quantity;
        this.price = price;
        this.size = size;
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

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
    
    
}
