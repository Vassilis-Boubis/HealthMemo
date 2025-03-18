import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;
import org.json.JSONArray;
import org.json.JSONObject;
import java.util.ArrayList;
import javax.servlet.*;
import java.io.*;
import java.text.ParseException;
import HealthMemoJava.*;
import com.google.gson.Gson;

 

public class DoctorController extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
 
    /***** This Method Is Called By The Servlet Container To Process A 'GET' Request. *****/
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
        // handleRequest(req, resp);
        JSONArray arrayObj = new JSONArray();
        List<Doctor> docList = new ArrayList<Doctor>();
        MyDb mydb = new MyDb();
        try {
 
            /***** Fetching Doctor Records From The Database *****/
            try{
                docList = mydb.getALLDoctors();
            }catch(Exception e){
                docList = null;
            }

            // resp.setContentType("application/json");
            // resp.setCharacterEncoding("utf-8");
            // PrintWriter out = new PrintWriter(resp.getWriter(), true);
            PrintWriter out = resp.getWriter();
            Gson gson = new Gson();
            resp.setContentType("application/json");
            resp.setCharacterEncoding("utf-8");

            if(docList != null && docList.size() > 0) { 

                String jsondata = gson.toJson(docList);
                out.print(jsondata);
                // for (Doctor doc : docList) {


                //     String jsondata = gson.toJson(doc);
                //     out.print(jsondata);


                //     // JSONObject obj = new JSONObject();
                //     // String id = Integer.toString(doc.getDoctorid());
                    
                //     // obj.put("aa",id);
                //     // obj.put("firstname",doc.getFirstname());
                //     // obj.put("lastname",doc.getLastname());
                //     // obj.put("sex",doc.getSex());
                //     // obj.put("specialty",doc.getSpecialty());
                //     // obj.put("address",doc.getAddress());
                //     // obj.put("area",doc.getArea());
                //     // obj.put("email",doc.getEmail());
                //     // obj.put("phone",doc.getPhone());
                    
                //     // arrayObj.put(obj);

                // }     
                // out.write(arrayObj.toString());
                out.close();

                System.out.println("Total Doctor Records Fetch From Db Are?= " + docList.size());
            } else {
                System.out.println("No Doctor Records Are Present In Db");
            }


            /***** Preparing The Output Response *****/
            resp.setContentType("text/html");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write(arrayObj.toString());
        
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
 
    public void handleRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException {
 
        JSONArray arrayObj = new JSONArray();
        List<Doctor> docList = new ArrayList<Doctor>();
        MyDb mydb = new MyDb();
        try {
 
            /***** Fetching Doctor Records From The Database *****/
            try{
                docList = mydb.getALLDoctors();
            }catch(Exception e){
                docList = null;
            }

            // resp.setContentType("application/json");
            // resp.setCharacterEncoding("utf-8");
            // PrintWriter out = new PrintWriter(resp.getWriter(), true);
            PrintWriter out = resp.getWriter();
            Gson gson = new Gson();
            resp.setContentType("application/json");
            resp.setCharacterEncoding("utf-8");

            if(docList != null && docList.size() > 0) { 

                for (Doctor doc : docList) {


                    String jsondata = gson.toJson(doc);
                    out.print(jsondata);


                    // JSONObject obj = new JSONObject();
                    // String id = Integer.toString(doc.getDoctorid());
                    
                    // obj.put("aa",id);
                    // obj.put("firstname",doc.getFirstname());
                    // obj.put("lastname",doc.getLastname());
                    // obj.put("sex",doc.getSex());
                    // obj.put("specialty",doc.getSpecialty());
                    // obj.put("address",doc.getAddress());
                    // obj.put("area",doc.getArea());
                    // obj.put("email",doc.getEmail());
                    // obj.put("phone",doc.getPhone());
                    
                    // arrayObj.put(obj);

                }     
                // out.write(arrayObj.toString());
                out.close();

                System.out.println("Total Doctor Records Fetch From Db Are?= " + docList.size());
            } else {
                System.out.println("No Doctor Records Are Present In Db");
            }


            /***** Preparing The Output Response *****/
            resp.setContentType("text/html");
            resp.setCharacterEncoding("UTF-8");
            resp.getWriter().write(arrayObj.toString());
            
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }
}