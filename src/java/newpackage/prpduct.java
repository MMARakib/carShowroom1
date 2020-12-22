/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

/**
 *
 * @author rakib
 */
public class prpduct {
    int product_id;
    String brand;
    String color;
    String pic;
      public prpduct() {
    }
    

    public prpduct(int product_id, String brand, String color ,String pic) {
        this.product_id = product_id;
        this.brand = brand;
        this.color = color;
        this.pic=pic;
       
    }

    public prpduct(String brand, String color,String pic) {
        this.brand = brand;
        this.color = color;
        this.pic=pic;
       
    }
       public prpduct(String color,String pic) {
        this.color = color;
        this.pic=pic;
       
    }

    public int getId() {
        return product_id;
    }

    public void setId(int product_id) {
        this.product_id= product_id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
    public String getPic() {
        return pic;
    }

    public void setpic(String pic) {
        this.pic = pic;
    }

 
    

}
