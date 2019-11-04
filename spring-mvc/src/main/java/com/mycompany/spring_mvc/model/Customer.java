package com.mycompany.spring_mvc.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class Customer {
	@NotNull
	@Size(min = 3, message = "Name must be atleast 3 characters long")
	private String firstName;
	@NotNull
	@Size(min = 3, message = "Name must be atleast 3 characters long")
	private String lastName;
	@NotNull
	@Min(value = 0, message = "Free pass cannot be negative")
	@Max(value = 10, message = "Free pass cannot be greater than 10")
	private int freePass;
	@Pattern(regexp = "^\\d{3}\\s?\\d{3}$",message = "Invalid postal code")
	private String postalCode;
	@NotNull
	@Email(message = "Invalid email")
	private String email;
}
