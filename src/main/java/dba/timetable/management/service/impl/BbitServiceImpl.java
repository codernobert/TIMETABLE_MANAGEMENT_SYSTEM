package dba.timetable.management.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dba.timetable.management.domain.Bbit;
import dba.timetable.management.domain.Bcom;
import dba.timetable.management.domain.Lecturer;
import dba.timetable.management.domain.repository.BbitRepository;
import dba.timetable.management.service.BbitService;

@Service
public class BbitServiceImpl implements BbitService {

	@Autowired
	private BbitRepository bbitRepository;
	
	@Override
	public void addUnit(Bbit bbit) {
		bbitRepository.addUnit(bbit);		
	}

	@Override
	public List<Bbit> getAllBbitUnits() {
		return bbitRepository.getAllBbitUnits();
	}

	@Override
	public void updateBbitUnit(Bbit bbit) {
		bbitRepository.updateBbitUnit(bbit);
		
	}

	@Override
	public void deleteBbitUnit(int id) {
		bbitRepository.deleteBbitUnit(id);
		
	}

	@Override
	public Bbit findBbitUnitById(int id) {
		return bbitRepository.findBbitUnitById(id);
	}

	@Override
	public void updateSessionContact(Bbit bbit) {
		bbitRepository.updateSessionContact(bbit);
	}

	@Override
	public void addLecturer(Lecturer lecturer) {
		bbitRepository.addLecturer(lecturer);
		
	}

	@Override
	public void addBcomUnit(Bcom bcom) {
		bbitRepository.addBcomUnit(bcom);
	}


	
}
