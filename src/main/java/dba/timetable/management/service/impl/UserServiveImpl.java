package dba.timetable.management.service.impl;

import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import dba.timetable.management.domain.Role;
import dba.timetable.management.domain.User;
import dba.timetable.management.domain.repository.UserRepository;
import dba.timetable.management.service.UserService;
import dba.timetable.management.web.dto.UserRegistrationDto;

@Service
public class UserServiveImpl implements UserService{

	
	
	private UserRepository userRepository;
	
	public UserServiveImpl(UserRepository userRepository) {
		super();
		this.userRepository = userRepository;
	}

    @Override
    public User save(UserRegistrationDto registrationDto) {
        User user = new User(registrationDto.getFirstName(),
        		registrationDto.getLastName(), 
        		registrationDto.getEmail(), 
        		registrationDto.getPassword(),
        		
        		Arrays.asList(new Role("ROLE_USER"))
        		
        		);

        return userRepository.save(user);
    }

}
