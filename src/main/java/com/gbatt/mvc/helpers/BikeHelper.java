package com.gbatt.mvc.helpers;

import java.util.ArrayList;
import java.util.List;

import com.gbatt.mvc.pojos.Bike;

public class BikeHelper {

	public BikeHelper() {
	}

	public static List<Bike> generateBikeList(){
		List<Bike> result = new ArrayList<Bike>();
		
		result.add(new Bike("Specialized","StumpJumper","ATB"));
		result.add(new Bike("Specialized","MX2","ATB"));
		result.add(new Bike("TREK","950","ATB"));
		result.add(new Bike("PEUGEOT","unknown","ROAD"));
		
		return result;
	}
}
