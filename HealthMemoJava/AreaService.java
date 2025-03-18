package HealthMemoJava;

import java.util.List;
import java.util.ArrayList;

public class AreaService {

    public List<Area> getAreas() throws Exception {

        List<Area> areas = new ArrayList<Area>();

        areas.add( new Area(1, "Kolonaki") );
        areas.add( new Area(2, "Piraeus") );
        areas.add( new Area(3, "Marousi") );
        areas.add( new Area(4, "Rafina") );
        areas.add( new Area(5, "Peristeri") );
        areas.add( new Area(6, "Glyfada") );
        areas.add( new Area(7, "Cholargos") );
        areas.add( new Area(8, "Zografou") );

        return areas;

    } 

    
    public Area getAreaByID(int area) throws Exception {

		List<Area> areas = getAreas();

		for(Area a : areas) {

			if(a.getId() == area) {
				return a;
			}
		}

		throw new Exception("No Area found with id: " + area);

	} 

}
