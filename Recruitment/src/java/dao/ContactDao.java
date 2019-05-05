package dao;

public class ContactDao {
    
    private int id;
    private String first_name;
    private String last_name;
    private String email;
    private String mobile_no;
    private String query;
    
    public int getId(){
        return id;
    }
    public void setId(int id)
    {
        this.id=id;
    }
    public String getFirst_name(){
        return first_name;
    }
    public void setFirst_name(String first_name)
    {
        this.first_name=first_name;
    }
    public String getLast_name(){
        return last_name;
    }
        public void setLast_name(String last_name)
    {
        this.last_name=last_name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email)
    {
        this.email=email;
    }
    public String getMobile_no() {
        return mobile_no;
    }
    public void setMobile_no(String mobile_no)
    {
        this.mobile_no=mobile_no;
    }
    public String getQuery(){
        return query;
    }
    public void setQuery(String query){
        this.query=query;
    }
    
}
