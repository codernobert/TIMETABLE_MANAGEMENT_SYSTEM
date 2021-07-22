package dba.timetable.management.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String welcome(Model model) {
	   model.addAttribute("greeting", "Welcome to Timetable Management System!");
	   model.addAttribute("tagline", "Exellence");
	return "welcome";
	}
	
	@RequestMapping("/welcome")
	public String welcome1(Model model) {
	   model.addAttribute("greeting", "Welcome to Timetable Management System!");
	   model.addAttribute("tagline", "Exellence");
	return "welcome";
	}

	
}
