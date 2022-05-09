package dba.timetable.management.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dba.timetable.management.domain.Bbit;
import dba.timetable.management.domain.Bcom;
import dba.timetable.management.domain.Lecturer;
import dba.timetable.management.service.BbitService;

@Controller
public class AdminController {
	@Autowired
	private BbitService bbitService;
	
	        //CREATE BBIT UNITS
	        @RequestMapping(value = "/addUnits", method = RequestMethod.GET)
	         public String getAddNewUnitForm(Model model) {
			     Bbit newUnit = new Bbit();
			     model.addAttribute("newUnit", newUnit);
			     return "addUnitsPage";
			}
	
			@RequestMapping(value = "/addUnits", method = RequestMethod.POST)
			 public String processAddNewUnitForm(@ModelAttribute("newUnit") Bbit newUnit, HttpServletRequest request)
			{
				bbitService.addUnit(newUnit);
				
			    return "redirect:/editTimetable";
			}
			
			//CREATE BCOM UNITS
	        @RequestMapping(value = "/addBcomUnits", method = RequestMethod.GET)
	         public String getAddNewUnitForm1(Model model) {
			     Bcom newUnit2 = new Bcom();
			     model.addAttribute("newUnit2", newUnit2);
			     return "addBcomUnitsPage";
			}
	
			@RequestMapping(value = "/addBcomUnits", method = RequestMethod.POST)
			 public String processAddNewUnitForm1(@ModelAttribute("newUnit2") Bcom newUnit2, HttpServletRequest request)
			{
				bbitService.addBcomUnit(newUnit2);
				
			    return "redirect:/addBcomUnits";
			}
			
			//CREATE LECTURERS DETAILS
	        @RequestMapping(value = "/addLec", method = RequestMethod.GET)
	         public String getAddNewLecturerForm2(Model model) {
			     Lecturer newLecturer = new Lecturer();
			     model.addAttribute("newLecturer", newLecturer);
			     return "addLecturer";
			}
	
			@RequestMapping(value = "/addLec", method = RequestMethod.POST)
			 public String processAddNewLecturerForm2(@ModelAttribute("newLecturer") Lecturer newLecturer)
			{
				bbitService.addLecturer(newLecturer);
				
				
				
			    return "redirect:/addLec";
			}
			
			//READ
			@RequestMapping("/editTimetable")
			public String list(Model model) {
			model.addAttribute("editTimetable", bbitService.getAllBbitUnits());
			return "editTimetable";
			}
			
			//UPDATE
			@RequestMapping(value="/update/{id}", method=RequestMethod.GET)
			 public ModelAndView update(@PathVariable("id") int id){
			  ModelAndView model = new ModelAndView("user_form");
			  
			  Bbit bbit = bbitService.findBbitUnitById(id);
			  model.addObject("userForm", bbit);
			  
			  return model;
			 }
			 
			 @RequestMapping(value="/save", method=RequestMethod.POST)
			 public ModelAndView save(@ModelAttribute("userForm") Bbit bbit){
			   bbitService.updateBbitUnit(bbit);
			  return new ModelAndView("redirect:/editTimetable");
			 }
	
			 //DELETE
			 @RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
			 public ModelAndView delete(@PathVariable("id") int id){
			  bbitService.deleteBbitUnit(id);;
			  
			  return new ModelAndView("redirect:/editTimetable");
			 }
			 
			 @RequestMapping(value = "/adminDashboard", method = RequestMethod.GET)
				public String adminDashboard() {
				      return "adminDashboard";
				}

}
