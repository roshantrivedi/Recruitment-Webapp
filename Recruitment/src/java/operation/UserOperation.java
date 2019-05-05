package operation;

import dao.ApplyDao;
import dao.ContactDao;
import dao.ProfileDao;
import dao.UserDao;
import db.DbConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserOperation {
    static PreparedStatement stmt=null;
    static Connection con=null;
    static ResultSet rs=null;
    
    public static UserDao login(UserDao user)
    {
        try{
             con=DbConnection.getCon();
            stmt=con.prepareStatement("select * from user where email=? and password=?");
            stmt.setString(1,user.getEmail());
            stmt.setString(2,user.getPassword());
            rs=stmt.executeQuery();
            
            if(rs.next()){
                //System.out.println(rs.getString("first_name")+" "+rs.getString("last_name"));
                user.setFirst_name(rs.getString("first_name"));
                user.setLast_name(rs.getString("last_name"));
                user.setUsername(rs.getString("username"));
                //user.setId(rs.getInt("id"));
                user.setUser_type(rs.getString("user_type"));
                return user;
            }
            else
                user=null;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return user;
    }
    
    
     public static int addUser(UserDao user)
    {
        int i=0;
        try{
            con=DbConnection.getCon();
            stmt=con.prepareStatement("insert into user(first_name,last_name,email,mobile_no,username,password,user_type) values (?,?,?,?,?,?,?)");
            stmt.setString(1,user.getFirst_name());
            stmt.setString(2,user.getLast_name());
            stmt.setString(3,user.getEmail());
            stmt.setString(4,user.getMobile_no());
            stmt.setString(5,user.getUsername());
            stmt.setString(6,user.getPassword());
            stmt.setString(7,user.getUser_type());
            i=stmt.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return i;
    }
    
    public static int contactUs(ContactDao co)
    {
        int i=0;
        try{
            con=DbConnection.getCon();
            stmt=con.prepareStatement("insert into contact(first_name,last_name,email,mobile_no,query) values (?,?,?,?,?)");
            stmt.setString(1,co.getFirst_name());
            stmt.setString(2,co.getLast_name());
            stmt.setString(3,co.getEmail());
            stmt.setString(4,co.getMobile_no());
            stmt.setString(5,co.getQuery());
            i=stmt.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return i;
    }
    
     public static int addProfile(ProfileDao pr)
    {
        int i=0;
        try{
            con=DbConnection.getCon();
            stmt=con.prepareStatement("insert into profile(full_name,email,mobile_no,altmobile_no,fathers_name,mothers_name,address,degree,y1,institution,y2,p1,y3,p2,exp,org,yoe,skills) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,pr.getFull_name());
            stmt.setString(2,pr.getEmail());
            stmt.setString(3,pr.getMobile_no());
            stmt.setString(4,pr.getAltMobile_no());
            stmt.setString(5,pr.getFathers_name());
            stmt.setString(6,pr.getMothers_name());
            stmt.setString(7,pr.getAddress());
            stmt.setString(8,pr.getDegree());
            stmt.setString(9,pr.getY1());
            stmt.setString(10,pr.getInstitution());
            stmt.setString(11,pr.getY2());
            stmt.setString(12,pr.getP1());
            stmt.setString(13,pr.getY3());
            stmt.setString(14,pr.getP2());
            stmt.setString(15,pr.getExp());
            stmt.setString(16,pr.getOrg());
            stmt.setString(17,pr.getYoe());
            stmt.setString(18,pr.getSkills());
            i=stmt.executeUpdate();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return i;
    }
     
    public static ApplyDao applyFor(ApplyDao ap)
    {
        try{
             con=DbConnection.getCon();
            stmt=con.prepareStatement("select * from apply where field=?");
            stmt.setString(1,ap.getField());
            
            rs=stmt.executeQuery();
            
            if(rs.next()){
                
                ap.setLink(rs.getString("link"));
                return ap;
            }
            else
                ap=null;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return ap;
    
    }



}