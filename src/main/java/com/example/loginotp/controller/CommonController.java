package com.example.loginotp.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.example.loginotp.entity.User;
import com.example.loginotp.service.CustomUserDetails;
import com.example.loginotp.service.UserService;

@Controller
public class CommonController {
	
	@Autowired
	private UserService userService;

	@GetMapping("/")
	public String getHomepage() {
		return "index";
	}
	
	@GetMapping("/signin")
	public String getSigninPage() {
		return "signin";
	}
	
	@GetMapping("/signup")
	public String getSignupPage() {
		return "signup";
	}
	
	@PostMapping("/signup")
	public String processSignup(Model model, @ModelAttribute("user") User user) {
		User tmp = userService.registerNewUser(user);
		
		if(tmp == null) {
			model.addAttribute("str_failure", "Can't sign up at the moment. Please try again later.");
			return "signup";
		} else {
			model.addAttribute("str_success", "Sign up successful! You can now login to portal.");
			return "signup";
		}
		
	}
	
	@GetMapping("/dashboard")
	public String getDashboardPage(Model model, @AuthenticationPrincipal CustomUserDetails loggedinUser) {
		model.addAttribute("username", loggedinUser.getUsername());
		return "dashboard";
	}
}
