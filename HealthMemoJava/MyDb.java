package HealthMemoJava;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
 
public class MyDb {
 
    static ResultSet rs = null;
    static Statement stmtObj = null;
    static Connection con = null;
    private final String dbServer = "195.251.249.131";
	private final String dbServerPort = "3306";
	private final String dbName = "ismgroup26";
	private final String dbusername = "ismgroup26";
	private final String dbpassword = "grweu6";
 
    /***** Method #1 :: This Method Is Used To Create A Connection With The Database *****/
    public Connection getConnection() throws Exception {

		/* Step 1 -> Dynamically load the driver's class file into memory */

		try {

			// Dynamically load the driver's class file into memory
			Class.forName("com.mysql.jdbc.Driver").newInstance();

		} catch (Exception e) {

			throw new Exception("MySQL Driver error: " + e.getMessage());
		}

		/*
		 * Step 2 -> Establish a connection with the database and initializes
		 * the Connection object (con)
		 */

		try {

			con = DriverManager.getConnection("jdbc:mysql://" 
				+ dbServer + ":" + dbServerPort + "/" + dbName, dbusername, dbpassword);

			// Step 3 -> returns the connection object
			return con;

		} catch (Exception e) {
			
			// throw Exception if any error occurs
			throw new Exception("Could not establish connection with the Database Server: " 
				+ e.getMessage());
		}

	} // End of getConnection

	/**
	 * Close database connection. It is
	 * very important to close the database connection after it is used.
	 * 
	 * @throws SQLException
	 */
	public void close() throws SQLException {

		try {

			// if connection is (still) open
			if (con != null)
				con.close(); // close the connection to the database to end database session

		} catch (SQLException e) {

			throw new SQLException("Could not close connection with the Database Server: " 
				+ e.getMessage());
		}

	}// end of close
 
    /***** Method #2 :: This Method Is Used To Retrieve The Records From The Database *****/
    

    public List<Doctor> getALLDoctors() throws Exception {
			
		List<Doctor> listofdoctors = new ArrayList<Doctor>();
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql ="SELECT * FROM doctors;";

		try{

			con =db.getConnection();
			stmt = con.prepareStatement(sql);

			rs =stmt.executeQuery();

			while (rs.next()){
				Doctor doctor = new Doctor(rs.getInt("doctors.doctorid"),rs.getString("doctors.firstname"),rs.getString("doctors.lastname"),
					rs.getString("doctors.sex"),rs.getString("doctors.specialty"),rs.getString("doctors.address"),rs.getString("doctors.area"),
					rs.getString("doctors.email"),rs.getString("doctors.phone"));

				listofdoctors.add(doctor);
			}

			rs.close();
			stmt.close();
			db.close();

			return listofdoctors;

		}catch(Exception e){
			throw new Exception(e.getMessage());
		}finally{
			try{
				db.close();
			}catch(Exception e){

			}
		}

		
	} 
 
    /***** Method #3 :: This Method Is Used To Close The Connection With The Database *****/
    public static void disconnectDb() {
        try {
            rs.close();
            stmtObj.close();
            con.close();
        } catch (SQLException sqlExObj) {
            sqlExObj.printStackTrace();
        }       
    }
}