package operation;

import db.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProfileOperation {
    
    static PreparedStatement stmt=null;
    static Connection con=null;
    static ResultSet rs=null;
    
    public ResultSet showAllJobs()
    {
        try{
             con=DbConnection.getCon();
            stmt=con.prepareStatement("select * from apply");
            
            rs=stmt.executeQuery();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return rs;
    }
    
    public ResultSet showAllJobsECE()
    {
        try{
             con=DbConnection.getCon();
            stmt=con.prepareStatement("select * from applyece");
            
            rs=stmt.executeQuery();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return rs;
    }
    
    public ResultSet showAllJobsCE()
    {
        try{
             con=DbConnection.getCon();
            stmt=con.prepareStatement("select * from applyce");
            
            rs=stmt.executeQuery();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return rs;
    }
    
    public ResultSet showProfile(String email)
    {
        try{
             con=DbConnection.getCon();
            stmt=con.prepareStatement("select * from profile where email=?");
            stmt.setString(1,email);
            rs=stmt.executeQuery();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return rs;
    }
    
    
    
}
