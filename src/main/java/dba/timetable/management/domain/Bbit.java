package dba.timetable.management.domain;

import java.io.Serializable;

public class Bbit implements Serializable {

private static final long serialVersionUID = 3678107792576131001L;
	
	
	private int id;
	private String unit_code;
	private String unit_name;
	private String lecturer;
	private String lecturer_contacts;
	private String day;
	private String time;
	private String venue;
	private String session;
	

	public Bbit(int id) {
		  super();
		  this.id = id;
		 }



	public Bbit() {
		super();
		// TODO Auto-generated constructor stub
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUnit_code() {
		return unit_code;
	}
	public void setUnit_code(String unit_code) {
		this.unit_code = unit_code;
	}
	public String getUnit_name() {
		return unit_name;
	}
	public void setUnit_name(String unit_name) {
		this.unit_name = unit_name;
	}
	public String getLecturer() {
		return lecturer;
	}
	public void setLecturer(String lecturer) {
		this.lecturer = lecturer;
	}
	public String getLecturer_contacts() {
		return lecturer_contacts;
	}
	public void setLecturer_contacts(String lecturer_contacts) {
		this.lecturer_contacts = lecturer_contacts;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}

	


	public String getSession() {
		return session;
	}



	public void setSession(String session) {
		this.session = session;
	}



		

	
}
