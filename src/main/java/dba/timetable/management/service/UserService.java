package dba.timetable.management.service;

import dba.timetable.management.domain.User;
import dba.timetable.management.web.dto.UserRegistrationDto;

public interface UserService {

	User save(UserRegistrationDto registrationDto);
	
}
