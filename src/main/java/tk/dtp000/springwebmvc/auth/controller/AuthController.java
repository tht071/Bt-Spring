package tk.dtp000.springwebmvc.auth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import tk.dtp000.springwebmvc.auth.model.User;

@Controller
public class AuthController {
	
	@GetMapping("/login")
	public String showLogin(Model model) {
		model.addAttribute("user", new User("", ""));
		return "login";
	}
	
	@PostMapping("/login")
	private String auth(@ModelAttribute("user") User user, Model model) {
		if (user.getUsername().equals("admin") && user.getPassword().equals("admin")) {
			return "admin";
		} else {
			model.addAttribute("message", "Login fail! Username or Password incorrect.");
			return "login";			
		}
	}
}
