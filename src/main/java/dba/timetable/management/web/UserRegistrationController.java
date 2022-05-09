package dba.timetable.management.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dba.timetable.management.service.UserService;
import dba.timetable.management.web.dto.UserRegistrationDto;

@Controller

public class UserRegistrationController {

	private UserService userService;

    public UserRegistrationController(UserService userService) {
        super();
        this.userService = userService;
    }

    @RequestMapping("/registration")
    public String showRegistrationForm() {
        return "registration";
    }

	@RequestMapping(value="/registration", method=RequestMethod.POST)
    public String registerUserAccount(@ModelAttribute("user") UserRegistrationDto registrationDto) {
        userService.save(registrationDto);
        return "redirect:/registration";
    }
	
}
