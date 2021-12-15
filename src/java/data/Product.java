/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author vfranco
 */
public class Product {
    String name;
    double price;
    String imgName;
    public Product(String name_,double price_,String imgName_) {
        name = name_;
        price = price_;
        imgName = imgName_;
    }
    public String getName() {
        return name;
    }
    public double getPrice() {
        return price;
    }
    public String getImgName() {
        return imgName;
    }
}
