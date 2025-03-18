package HealthMemoJava;

public class Area {

    private int id;
    private String name;

    /** 
     * 
     * @param id 
     * @param name 
     */
    public Area(int id, String name) {
        this.id = id;
        this.name = name;
    }

    /* Getters and Setters */
    
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}