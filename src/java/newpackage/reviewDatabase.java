package newpackage;

import java.sql.*;

public class reviewDatabase  {
    Connection con ;

    public reviewDatabase (Connection con) {
        this.con = con;
    }
    
   
    public boolean saveReview(reviewP reviewP){
        boolean set = false;
        try{
            String query = "insert into review(review) values(?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, reviewP.getReview());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
   
}
