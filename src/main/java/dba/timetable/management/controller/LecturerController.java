package dba.timetable.management.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dba.timetable.management.domain.Bbit;
import dba.timetable.management.service.BbitService;

@Controller
public class LecturerController {

	@Autowired
	private BbitService bbitService;
	
	//READ
	@RequestMapping("/editSession")
	public String list2(Model model) {
	model.addAttribute("editSession", bbitService.getAllBbitUnits());
	return "editSession";
	}
	
	//UPDATE
	@RequestMapping(value="/updateSession/{id}", method=RequestMethod.GET)
	 public ModelAndView update(@PathVariable("id") int id){
	  ModelAndView model = new ModelAndView("editSession_user_form");
	  
	  Bbit bbit = bbitService.findBbitUnitById(id);
	  model.addObject("lecUserForm", bbit);
	  
	  return model;
	 }
	 
	 @RequestMapping(value="/saveSessionStatus", method=RequestMethod.POST)
	 public ModelAndView save(@ModelAttribute("lecUserForm") Bbit bbit){
	   bbitService.updateSessionContact(bbit);
	  return new ModelAndView("redirect:/editSession");
	 }
	 	
}
