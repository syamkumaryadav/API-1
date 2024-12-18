package com.vnk.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vnk.entity.UserDetails;
import com.vnk.service.IUserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {
	@Autowired
	private IUserService iUserService;

	@GetMapping({ "/", "/login" })
	public String login() {
		return "login";
	}

	@PostMapping("/login")
	public String loginSuccess(@RequestParam String email, @RequestParam String password, Map<String, String> map,HttpSession session) {
		String str = iUserService.userLogin(email, password);
		if (str.equals("null")) {
			map.put("msg", "You're not registered or incorrect credentials");
			return "login";
		} else {
		  session.setAttribute("email", email);
			map.put("login", str);
			return "home";
		}
	}
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	@PostMapping("/signup")
	public String signupSucess(@ModelAttribute UserDetails details, Map<String, String> map) {
		String msg = iUserService.userSignUp(details);
		map.put("msg", msg);
		return "login";
	}

	@GetMapping("/viewProfile")
	public String viewDetails(@RequestParam String email, Map<String, Object> map) {
		if (email != null) {
			UserDetails viewDetails = iUserService.viewDetails(email);
			map.put("details", viewDetails);
			return "viewDetails";
		} else {
			return "home";
		}
	}

	@GetMapping("/updateUser")
	public String updateUser(@RequestParam String email, Map<String, Object> map) {
		UserDetails viewDetails = iUserService.viewDetails(email);

		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String formattedDate = dateFormat.format(viewDetails.getDateOfBirth());
		map.put("formattedDate", formattedDate);

		map.put("userdetails", viewDetails);
		return "updateUser";
	}

	@PostMapping("/updateUser")
	public String updateSuccess(@Valid @ModelAttribute UserDetails userdetails, BindingResult result,
			Map<String, Object> model) {

		if (result.hasErrors()) {
			model.put("error", "Validation failed! Please ensure all fields are correct.");
			return "viewDetails";
		}
		if (userdetails != null) {
			try {
				iUserService.userSignUp(userdetails);
				UserDetails viewDetails = iUserService.viewDetails(userdetails.getEmail());
				model.put("update", "Your Prifile Updated...");
				model.put("details", viewDetails);
				return "viewDetails";
			} catch (Exception e) {
				model.put("error", "An error occurred while updating the user. Please try again.");
				return "viewDetails";
			}
		}

		return "viewDetails";
	}
   @GetMapping("/home")
   public String home() {
	   return "home";
   }
   
   
   @GetMapping("/shopping")
   public String shopping() {
	   return "shopping";
   }
   
   @GetMapping("/reels")
   public String reelsPage() {
	   return "reels";
   }
   @GetMapping("/music")
   public String music() {
	   return "music";
   }
   
}
