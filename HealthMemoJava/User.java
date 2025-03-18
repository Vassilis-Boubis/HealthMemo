package HealthMemoJava;

import java.sql.*;

public class User {

    private int userid;
    private String firstname;
	private String lastname;
    private String gender;
    private String address;
    private String addinfo;
	private int zip;
    private String city;
    private String country;
    private String username;
    private String password;
    private int code;
    private String phone;
    private String email;
    private String birthdate;
    private String SSN;
    private String SIN;
    private String allergies;
    private String bloodtype;
    private String RH;
    private String medconditions;
    private float height;
    private float weight;


    
    
    /** 
     *Full constructor
    * @param userid
    * @param firstname
    * @param lastname
    * @param gender
    * @param address
    * @param addinfo
    * @param zip
    * @param city
    * @param country
    * @param username
    * @param password
    * @param phone
    * @param email
    * @param birthdate
    * @param SSN
    * @param SIN
    * @param allergies
    * @param bloodtype
    * @param RH
    * @param medconditions
    * @param height
    * @param weight

    */ 
    
        public User (int userid, String firstname, String lastname, String gender, String address, String addinfo, int zip, String city, String country,
        String username, String password, int code, String phone, String email, String birthdate, String SSN, String SIN, String allergies,
        String bloodtype, String RH, String medconditions, float height, float weight) {

            this.userid=userid;
            this.firstname=firstname;
            this.lastname=lastname;
            this.gender=gender;
            this.address=address;
            this.addinfo=addinfo;
            this.zip=zip;
            this.city=city;
            this.country=country;
            this.username=username;
            this.password=password;
            this.code=code;
            this.phone=phone;
            this.email=email;

            this.birthdate=birthdate;
            this.SSN=SSN;
            this.SIN=SIN;
            this.allergies=allergies;
           
            this.bloodtype=bloodtype;
            this.RH=RH;
            this.medconditions=medconditions;
            
            this.height=height;
            this.weight=weight;


        }

        public User (int userid, String firstname, String lastname, String address, String city, String country,
            String email, String username, String password) throws Exception{

            this.userid = userid;
            this.firstname=firstname;
            this.lastname=lastname;
            this.address=address;
            this.city=city;
            this.country=country;
            this.username=username;
            this.password=password;
            this.email=email;

        }

        public User (String firstname, String lastname, String gender, String address, String addinfo, int zip, String city, String country,
            String email, String username, String password, int code, String phone) throws Exception{

            this.userid = nextUserid() + 1;
            this.firstname=firstname;
            this.lastname=lastname;
            this.gender=gender;
            this.address=address;
            this.addinfo=addinfo;
            this.zip=zip;
            this.city=city;
            this.country=country;
            this.username=username;
            this.password=password;
            this.code=code;
            this.phone=phone;
            this.email=email;

        }
        
        public User(String birthdate, String SSN, String SIN, String allergies, String bloodtype, String RH, String medconditions, 
            float height, float weight) throws Exception{

            this.userid = nextUserid();
            this.birthdate = birthdate;
            this.SSN = SSN;
            this.SIN = SIN;
            this.allergies = allergies;
            this.bloodtype = bloodtype;
            this.RH = RH;
            this.medconditions = medconditions;
            this.height = height;
            this.weight = weight;
        }





        public void setUserid(int userid) {
            this.userid = userid;
        }

        public int getUserid() {
            return userid;
        }
        
        public String getFirstname() {
            return firstname;
        }
    
        public void setFirstname(String firstname) {
            this.firstname = firstname;
        }
    
        public String getLastname() {
            return lastname;
        }
    
        public void setLastname(String lastname) {
            this.lastname = lastname;
        }
    
        public String getGender() {
            return gender;
        }
    
        public void setGender(String gender) {
            this.gender = gender;
        }
    
        public String getAddress() {
            return address;
        }
    
        public void setAddress(String address) {
            this.address = address;
        }
    
        public String getAddinfo() {
            return addinfo;
        }
    
        public void setAddinfo(String addinfo) {
            this.addinfo = addinfo;
        }

        public int getZip() {
            return zip;
        }
    
        public void setZip(int zip) {
            this.zip = zip;
        }
    
        public String getCity() {
            return city;
        }
    
        public void setCity(String city) {
            this.city = city;
        }

        public String getCountry() {
            return country;
        }
    
        public void setCountry(String country) {
            this.country = country;
        }

        public String getUsername() {
            return username;
        }
    
        public void setUsername(String username) {
            this.username = username;
        }

        public String getPassword() {
            return password;
        }
    
        public void setPassword(String password) {
            this.password = password;
        }

        public int getCode() {
            return code;
        }
    
        public void setCode(int code) {
            this.code = code;
        }

        public String getPhone() {
            return phone;
        }
    
        public void setPhone(String phone) {
            this.phone = phone;
        }

        public String getEmail() {
            return email;
        }
    
        public void setEmail(String email) {
            this.email = email;
        }
    
        public String getBirthdate() {
            return birthdate;
        }
    
        public void setBirthdate(String birthdate) {
            this.birthdate = birthdate;
        }
    
        public String getSSN() {
            return SSN;
        }
    
        public void setSSN(String SSN) {
            this.SSN = SSN;
        }
        
        public String getSIN() {
            return SIN;
        }
    
        public void setSIN(String SIN) {
            this.SIN = SIN;
        }
   
        public String getAllergies() {
            return allergies;
        }
    
        public void setAllergies(String allergies) {
            this.allergies = allergies;
        }

        

        public String getBloodtype() {
            return bloodtype;
        }
    
        public void setBloodtype(String bloodtype) {
            this.bloodtype = bloodtype;
        }

        public String getRH() {
            return RH;
        }
    
        public void setRH(String RH) {
            this.RH = RH;
        }

        public String getMedconditions() {
            return medconditions;
        }
    
        public void setMedconditions(String medconditions) {
            this.medconditions = medconditions;
        }

       


        public float getHeight() {
            return height;
        }
    
        public void setHeight(float height) {
            this.height = height;
        }

        public float getWeight() {
            return weight;
        }
    
        public void setWeight(float weight) {
            this.weight = weight;
        }


        

        private static int nextUserid() throws Exception{

            DB db = new DB();
            Connection con = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;

            String sql = "SELECT MAX( userid ) FROM ismgroup26.users";

            try{
				con =db.getConnection();
				stmt = con.prepareStatement(sql);
				rs =stmt.executeQuery();

				if(!rs.next()){
					throw new Exception("Something went wrong");
				}

				int userid = rs.getInt("MAX( userid )");

				rs.close();
				stmt.close();
				db.close();

                return userid;

			} catch(Exception e){
				throw new Exception(e.getMessage());
			}finally{
				try{
					db.close();
				}catch(Exception e){

				}
			}
        }

















    
}