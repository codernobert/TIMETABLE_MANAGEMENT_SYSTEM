package dba.timetable.management.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import dba.timetable.management.service.BbitService;

@Controller
public class StudentController {
	
	@Autowired
	private BbitService bbitService;
			
			//READ
			@RequestMapping("/viewTimetable")
			public String list2(Model model) {
			  model.addAttribute("viewTimetable", bbitService.getAllBbitUnits());
			  return "viewTimetable";
			}
					
}
