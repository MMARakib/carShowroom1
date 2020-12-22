package newpackage;

import java.sql.*;

public class prpductDatabase  {
    Connection con ;

    public prpductDatabase (Connection con) {
        this.con = con;
    }
    
   
    public boolean savePrpduct(prpduct prpduct){
        boolean set = false;
        try{
            String query = "insert into prpduct(brand,color,pic) values(?,?,?)";
           
           PreparedStatement pt = this.con.prepareStatement(query);
           pt.setString(1, prpduct.getBrand());
           pt.setString(2,  prpduct.getColor());
           pt.setString(3, prpduct.getPic());
           
           pt.executeUpdate();
           set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }
   
}
