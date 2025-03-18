package HealthMemoJava;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DoctorDAO {
    
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

	public List<Doctor> getAreaDoctors(String area) throws Exception {
		
        List<Doctor> listofdoctors = new ArrayList<Doctor>();
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql ="SELECT * FROM doctors WHERE area=?;";

		try{
			con =db.getConnection();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, area);
			rs =stmt.executeQuery();

            while (rs.next()){
				Doctor doctor = new Doctor(rs.getInt("doctors.doctorid"),rs.getString("doctors.firstname"),rs.getString("doctors.lastname"),
					rs.getString("doctors.sex"), rs.getString("doctors.specialty"),rs.getString("doctors.address"),rs.getString("doctors.area"),
					rs.getString("doctors.email"),rs.getString("doctors.phone"));

				listofdoctors.add(doctor);
			}
			
			rs.close();
			stmt.close();
			db.close();

			return listofdoctors;

		} catch(Exception e){
			throw new Exception(e.getMessage());
		}finally{
			try{
				db.close();
			}catch(Exception e){

			}
		}
		
	}

	public List<Doctor> getSpecialtyDoctors(String specialty) throws Exception {
		
        List<Doctor> listofdoctors = new ArrayList<Doctor>();
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql ="SELECT * FROM doctors WHERE specialty=?;";

		try{
			con =db.getConnection();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, specialty);
			rs =stmt.executeQuery();

            while (rs.next()){
				Doctor doctor = new Doctor(rs.getInt("doctors.doctorid"),rs.getString("doctors.firstname"),rs.getString("doctors.lastname"),
					rs.getString("doctors.sex"),rs.getString("doctors.specialty"),rs.getString("doctors.address"),
					rs.getString("doctors.area"), rs.getString("doctors.email"),rs.getString("doctors.phone"));

				listofdoctors.add(doctor);
			}
			
			rs.close();
			stmt.close();
			db.close();

			return listofdoctors;

		} catch(Exception e){
			throw new Exception(e.getMessage());
		}finally{
			try{
				db.close();
			}catch(Exception e){

			}
		}
		
	}

    public List<Doctor> findDoctors(String area, String specialty) throws Exception {
		
        List<Doctor> listofdoctors = new ArrayList<Doctor>();
		DB db = new DB();
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql ="SELECT * FROM doctors WHERE area=? AND specialty=?;";

		try{
			con =db.getConnection();
			stmt = con.prepareStatement(sql);
			stmt.setString(1, area);
			stmt.setString(2, specialty);
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