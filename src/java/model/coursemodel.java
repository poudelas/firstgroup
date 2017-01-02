/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


public class coursemodel {
    
    private int id;
    private String title;
    private int price;
    private String duration;

    public coursemodel(int id, String title, int price, String duration) {
        this.id = id;
        this.title = title;
        this.price = price;
        this.duration = duration;
    }
    
    

    public coursemodel() {
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }
    
    
    
}
