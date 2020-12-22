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
public class reviewP {
      int review_id;
    String review;
   
      public reviewP() {
    }
    

    public reviewP(int review_id, String review) {
        this.review_id = review_id;
        this.review = review;
       
    }
     public reviewP( String review) {
        this.review = review;
       
    }
  

    public int getId() {
        return review_id;
    }

    public void setId(int review_id) {
        this.review_id= review_id;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

   

}
