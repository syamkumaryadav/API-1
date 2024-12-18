package com.vnk.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import io.micrometer.common.lang.NonNull;
import jakarta.annotation.Nonnull;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@RequiredArgsConstructor
public class UserDetails {
	@Nonnull
	@NotBlank(message = "FirstName not Empty")
	private String firstName;
	private String lastName;
	@Nonnull
	private Long mobileNo;
	@Id
	@Email(message = "Email not Empty")
	private String email;
	@NotBlank(message = "Address not Empty")
	@Nonnull
	private String password;
	@Nonnull
	@NotBlank(message = "Address not Empty")
	private String address;
	@Nonnull
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateOfBirth;
}
