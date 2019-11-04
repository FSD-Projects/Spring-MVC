package com.mycompany.spring_mvc.model;

import java.util.HashMap;
import java.util.LinkedHashMap;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class Student {
	private String firstName;
	private String lastName;
	private String countryName;
	private HashMap<String, String> countryMap;
	
	public Student() {
		super();
		countryMap = new LinkedHashMap<String, String>();
		countryMap.put("BR", "Brazil");
		countryMap.put("IN", "India");
		countryMap.put("US", "United States Of America");
		countryMap.put("DE", "Germany");
	}
}
