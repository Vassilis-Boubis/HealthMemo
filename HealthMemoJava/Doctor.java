package HealthMemoJava;

public class Doctor {
    
    private int doctorid;
    private int id = 0;
    private String firstname;
	private String lastname;
    private String sex;
    private String specialty;
    private String address;
    private String area;
	private String email;
    private String phone;

    /**
     * Full constuctor
     * @param doctorid  
     * @param firstname
     * @param lastname
     * @param specialty
     * @param address
     * @param area
     * @param email
     * @param phone
     */

    public Doctor(int doctorid, String firstname, String lastname, String sex, String specialty, String address, String area,
        String email, String phone) {

            this.doctorid = doctorid;
            this.firstname = firstname;
            this.lastname = lastname;
            this.sex = sex;
            this.specialty = specialty;
            this.address = address;
            this.area = area;
            this.email = email;
            this.phone = phone;
    }

    public Doctor(String firstname, String lastname, String sex, String specialty, String address, String area,
        String email, String phone) {
            
            this.id ++;
            this.firstname = firstname;
            this.lastname = lastname;
            this.sex = sex;
            this.specialty = specialty;
            this.address = address;
            this.area = area;
            this.email = email;
            this.phone = phone;
    }

    public int getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(int doctorid) {
        this.doctorid = doctorid;
    }

    public int getId() {
        return id;
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

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
     

    
}