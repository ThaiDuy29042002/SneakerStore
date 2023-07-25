/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.product;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author tuan3
 */
public class Cart {
    private Map<String, ProductDTO> cart;

    public Cart() {
    }

    public Cart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

    public Map<String, ProductDTO> getCart() {
        return cart;
    }

    public void setCart(Map<String, ProductDTO> cart) {
        this.cart = cart;
    }

    public boolean add(ProductDTO p) {
        boolean check = false;
        if(this.cart == null){
            this.cart = new HashMap<>();
        }
        if(this.cart.containsKey(p.getSneakerID())){
            int currentQuantity = this.cart.get(p.getSneakerID()).getQuantity();
            p.setQuantity(currentQuantity + p.getQuantity());
            
        }
        this.cart.put(p.getSneakerID(), p);
        check = true;
        return check;
    }
    public boolean edit(String id, ProductDTO p) {
        boolean checkEdit = false;
        if (this.cart!= null){
            if(this.getCart().containsKey(id)){
                cart.replace(id, p);
                checkEdit=true;
            }
        }
            return checkEdit;
    }

    public boolean remove(String sneakerID) {
        boolean checkRemove = false;
        if (this.cart!= null){
            if(this.getCart().containsKey(sneakerID)){
                cart.remove(sneakerID);
                checkRemove=true;
            }
        }
            return checkRemove;
    }
    
}
