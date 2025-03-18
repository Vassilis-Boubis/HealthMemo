package HealthMemoJava;

import java.sql.*;

public class UserDAO {

    public void generalRegister(User user) throws Exception {
			
		
		DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

		String sqlCheck = "SELECT  * FROM users WHERE userid = ?";

        	String sql = "INSERT INTO users (userid, firstname, lastname, gender, address, addinfo, zip, city, country, email, username, password, code, phone) " 
            + " VALUES (?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?)";
			


        try {
			con = db.getConnection();

            stmt = con.prepareStatement(sqlCheck);
            // setting parameters
            stmt.setInt(1, user.getUserid());

            rs = stmt.executeQuery();

            if ( rs.next() ) {
                rs.close();
                stmt.close();
                throw new Exception("Sorry, User with this id already exists");

            }

            stmt = con.prepareStatement(sql);

            // setting parameters
            stmt.setInt(1, user.getUserid());
            stmt.setString(2, user.getFirstname());
            stmt.setString(3, user.getLastname());
            stmt.setString(4, user.getGender());
            stmt.setString(5, user.getAddress());
            stmt.setString(6, user.getAddinfo());
            stmt.setInt(7, user.getZip());
            stmt.setString(8, user.getCity());
            stmt.setString(9, user.getCountry());
            stmt.setString(10, user.getEmail());
            stmt.setString(11, user.getUsername());
            stmt.setString(12, user.getPassword());
            stmt.setInt(13, user.getCode());
            stmt.setString(14, user.getPhone());
            

            stmt.executeUpdate();

            stmt.close();
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {

            try {
                db.close();
            } catch (Exception e) {
                
            }

        }
		
	}//end of register
    

    public void personalRegister(User user) throws Exception {
			
		
		DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;


        String sql = "UPDATE users SET birthdate=?,  SSN=? , SIN=?, allergies=?, bloodtype=?, RH=?, medconditions=?, height=?, weight=? WHERE userid= ?" ;
			


        try {
			con = db.getConnection();


            stmt = con.prepareStatement(sql);

            // setting parameters
           
            stmt.setString(1, user.getBirthdate());
            stmt.setString(2, user.getSSN());
            stmt.setString(3, user.getSIN());
            stmt.setString(4, user.getAllergies());
            stmt.setString(5, user.getBloodtype());
            stmt.setString(6, user.getRH());
            stmt.setString(7, user.getMedconditions());
            stmt.setFloat(8, user.getHeight());
            stmt.setFloat(9, user.getWeight());
            stmt.setInt(10, user.getUserid());

            stmt.executeUpdate();

            stmt.close();
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {

            try {
                db.close();
            } catch (Exception e) {
                
            }

        }
		
	}//end of register
    

    public void editProfile(User user) throws Exception {
			
		
		DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;


        String sql = "UPDATE users SET firstname=?,  lastname=? , email=?, address=?, city=?, country=?, username=?, password=? WHERE userid= ?" ;
			


        try {
			con = db.getConnection();


            stmt = con.prepareStatement(sql);

            // setting parameters
           
            stmt.setString(1, user.getFirstname());
            stmt.setString(2, user.getLastname());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getAddress());
            stmt.setString(5, user.getCity());
            stmt.setString(6, user.getCountry());
            stmt.setString(7, user.getUsername());
            stmt.setString(8, user.getPassword());
            stmt.setInt(9, user.getUserid());

            stmt.executeUpdate();

            stmt.close();
            db.close();

        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {

            try {
                db.close();
            } catch (Exception e) {
                
            }

        }
		
	}//end of register
    

    public User authenticate(String username, String password) throws Exception {
		
		
		DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

		String sql = "SELECT * FROM users WHERE username=? AND password=?;";

		try{
			con = db.getConnection();
            stmt = con.prepareStatement(sql);

            // setting parameter
            stmt.setString(1, username);
			stmt.setString(2, password);

            rs = stmt.executeQuery();

            if ( !rs.next() ) {

                rs.close(); //closing ResultSet
                stmt.close(); //closing PreparedStatement
                throw new Exception("Wrong username or password ");

            }

			User user = new User(rs.getInt("userid"),rs.getString("firstname"), 
            rs.getString("lastname"), rs.getString("gender"), rs.getString("address"),rs.getString("addinfo"), rs.getInt("zip"),rs.getString("city"),rs.getString("country"),
            rs.getString("username"), rs.getString("password"), rs.getInt("code"), rs.getString("phone"), rs.getString("email"), rs.getString("birthdate"),
            rs.getString("SSN"), rs.getString("SIN"), rs.getString("allergies"), rs.getString("bloodtype"),rs.getString("RH"), rs.getString("medconditions"), 
            rs.getFloat("height"), rs.getFloat("weight"));

				

            rs.close(); 
            stmt.close(); 
            db.close(); 

           return user;



		} catch (Exception e) {
			throw new Exception( e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}

	} //End of authenticate



    public User findUser(int userid) throws Exception {
		
		DB db = new DB();
        Connection con = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

		String sql = "SELECT * FROM users WHERE userid=?;";

		try {
			// open connection and get Connection object
			con = db.getConnection();

			stmt = con.prepareStatement(sql);

			
			stmt.setInt(1, userid);

			
			rs = stmt.executeQuery();
			User user = null;

			
			if (rs.next()){
            user = new User(rs.getInt("userid"),rs.getString("firstname"), 
            rs.getString("lastname"), rs.getString("gender"), rs.getString("address"),rs.getString("addinfo"), rs.getInt("zip"),rs.getString("city"),rs.getString("country"),
            rs.getString("username"), rs.getString("password"), rs.getInt("code"), rs.getString("phone"), rs.getString("email"), rs.getString("birthdate"),
            rs.getString("SSN"), rs.getString("SIN"), rs.getString("allergies"), rs.getString("bloodtype"),rs.getString("RH"), rs.getString("medconditions"), 
            rs.getFloat("height"), rs.getFloat("weight"));
            

            }
            rs.close(); //closing ResultSet
            stmt.close(); //closing PreparedStatement
            db.close(); //closing Connection

            return user;
        
		} catch (Exception e) {
			throw new Exception(e.getMessage());
		} finally {
			try {
				db.close();
			} catch (Exception e) {
				
			}
		}

        }	
	} //End of findUser






