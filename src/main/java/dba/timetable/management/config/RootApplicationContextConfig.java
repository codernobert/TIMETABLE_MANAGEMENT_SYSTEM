package dba.timetable.management.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
@ComponentScan("dba.timetable.management")
public class RootApplicationContextConfig {

	@Bean
	public DriverManagerDataSource getDataSource() {

		DriverManagerDataSource bds = new DriverManagerDataSource();
		bds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		bds.setUrl("jdbc:mysql://localhost:3306/dba_timetable_management");
		bds.setUsername("root");
		bds.setPassword("0701839432");

		return bds;
	}
	
	@Bean
	public NamedParameterJdbcTemplate getJdbcTemplate() {
	return new NamedParameterJdbcTemplate(getDataSource());
	}
	
}
