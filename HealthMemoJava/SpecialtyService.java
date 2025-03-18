package HealthMemoJava;

import java.util.List;
import java.util.ArrayList;

public class SpecialtyService {

    public List<Specialty> getSpecialties() throws Exception {

        List<Specialty> specialties = new ArrayList<Specialty>();

        specialties.add( new Specialty(1, "Internist") );
        specialties.add( new Specialty(2, "Ophthalmologist") );
        specialties.add( new Specialty(3, "Cardiologist") );
        specialties.add( new Specialty(4, "Pediatrician") );
        specialties.add( new Specialty(5, "Allergist") );
        specialties.add( new Specialty(6, "Dermatologist") );
        specialties.add( new Specialty(7, "Orthopedic doctor") );
        specialties.add( new Specialty(8, "Dietitian") );

        return specialties;

    } 

    
    public Specialty getSpecialtyByID(int specialty) throws Exception {

		List<Specialty> specialties = getSpecialties();

		for(Specialty s : specialties) {

			if(s.getId() == specialty) {
				return s;
			}
		}

		throw new Exception("No Specialty found with id: " + specialty);

	} 

}