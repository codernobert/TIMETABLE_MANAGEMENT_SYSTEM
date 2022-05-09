package dba.timetable.management.domain.repository;

import java.util.List;

import dba.timetable.management.domain.Bbit;
import dba.timetable.management.domain.Bcom;
import dba.timetable.management.domain.Lecturer;

public interface BbitRepository {

    List <Bbit> getAllBbitUnits();
	
	void addUnit(Bbit bbit);
	
	void addBcomUnit(Bcom bcom);
	
	void addLecturer(Lecturer lecturer);
	
	public void updateBbitUnit(Bbit bbit);
	 
	public void updateSessionContact(Bbit bbit);
	
	public void deleteBbitUnit(int id);
	 
	public Bbit findBbitUnitById(int id);

	
}
