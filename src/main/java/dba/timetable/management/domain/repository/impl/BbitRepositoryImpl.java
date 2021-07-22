package dba.timetable.management.domain.repository.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import dba.timetable.management.domain.Bbit;
import dba.timetable.management.domain.Bcom;
import dba.timetable.management.domain.Lecturer;
import dba.timetable.management.domain.repository.BbitRepository;

@Repository
public class BbitRepositoryImpl implements BbitRepository {
	@Autowired
	private NamedParameterJdbcTemplate jdbcTemplate;

	//CREATE
	@Override
	public void addUnit(Bbit bbit) {
		String SQL = "INSERT INTO bbit (unit_code,unit_name,lecturer,lecturer_contacts,day,venue,time,session)"
				+ "VALUES (:unit_code, :unit_name, :lecturer,:lecturer_contacts, :day, :time, :venue, :session)";
				
		Map<String, Object> params = new HashMap<>();
		params.put("unit_code", bbit.getUnit_code());
		params.put("unit_name", bbit.getUnit_name());
		params.put("lecturer", bbit.getLecturer());
		params.put("lecturer_contacts", bbit.getLecturer_contacts());
		params.put("day", bbit.getDay());
		params.put("time", bbit.getTime());
		params.put("venue", bbit.getVenue());
		params.put("session", bbit.getSession());
		
		jdbcTemplate.update(SQL, params);

	 }
	//READ
	@Override
	public List<Bbit> getAllBbitUnits() {
		Map<String, Object> params = new HashMap<String, Object>();
		List<Bbit> result = jdbcTemplate.query("SELECT * FROM bbit", params, new BbitMapper());
		return result;
	}
	
	private static final class BbitMapper implements RowMapper<Bbit> {
	
		public Bbit mapRow(ResultSet rs, int rowNum) throws SQLException {
	
			Bbit bbit = new Bbit();
	        bbit.setId(rs.getInt("id"));
	        bbit.setUnit_name(rs.getString("unit_name"));
	        bbit.setUnit_code(rs.getString("unit_code"));
	        bbit.setLecturer(rs.getString("lecturer"));
	        bbit.setLecturer_contacts(rs.getString("lecturer_contacts"));
	        bbit.setDay(rs.getString("day"));
	        bbit.setTime(rs.getString("time"));
	        bbit.setVenue(rs.getString("venue"));
	        bbit.setSession(rs.getString("session"));
	        
	        return bbit;
	  }
	}

	//UPDATE
	 private SqlParameterSource getSqlParameterByModel(Bbit bbit){
		  MapSqlParameterSource parameterSource = new MapSqlParameterSource();
		  if(bbit != null){
		   parameterSource.addValue("id", bbit.getId());
		   parameterSource.addValue("unit_code", bbit.getUnit_code());
		   parameterSource.addValue("unit_name", bbit.getUnit_name());
		   parameterSource.addValue("lecturer", bbit.getLecturer());
		   parameterSource.addValue("lecturer_contacts", bbit.getLecturer_contacts());
		   parameterSource.addValue("day", bbit.getDay());
		   parameterSource.addValue("time", bbit.getTime());
		   parameterSource.addValue("venue", bbit.getVenue());
		   parameterSource.addValue("session", bbit.getSession());
		  }
		  return parameterSource;
		 }
	
	@Override
	public void updateBbitUnit(Bbit bbit) {
		String sql = "UPDATE bbit SET unit_code = :unit_code, unit_name = :unit_name, lecturer = :lecturer,lecturer_contacts = :lecturer_contacts , day = :day, time = :time,venue = :venue WHERE id = :id";
				  
		jdbcTemplate.update(sql, getSqlParameterByModel(bbit));
	}

	//DELETE
	@Override
	public void deleteBbitUnit(int id) {
		 String sql = "DELETE FROM bbit WHERE id = :id";
		  
		 jdbcTemplate.update(sql, getSqlParameterByModel(new Bbit(id)));
	}

	//READ SELECT
	@Override
	public Bbit findBbitUnitById(int id) {
		String sql = "SELECT * FROM bbit WHERE id = :id";
		  
		return jdbcTemplate.queryForObject(sql, getSqlParameterByModel(new Bbit(id)), new BbitMapper());
	}

	@Override
	public void updateSessionContact(Bbit bbit) {
		String sql = "UPDATE bbit SET lecturer_contacts = :lecturer_contacts , session = :session WHERE id = :id";
		  
		jdbcTemplate.update(sql, getSqlParameterByModel(bbit));
		
	}

	@Override
	public void addLecturer(Lecturer lecturer) {
		String SQL = "INSERT INTO lecturers (email,password)"
				+ "VALUES (:email, :password)";
				
		        Map<String, Object> params = new HashMap<>();
				params.put("email", lecturer.getEmail());
				params.put("password", lecturer.getPassword());
				
				jdbcTemplate.update(SQL, params);
	}
	@Override
	public void addBcomUnit(Bcom bcom) {
		String SQL = "INSERT INTO bcom (unitCode,unitName,lecturer)"
				+ "VALUES (:unitCode, :unitName, :lecturer)";
				
		Map<String, Object> params = new HashMap<>();
		params.put("unitCode", bcom.getUnitCode());
		params.put("unitName", bcom.getUnitName());
		params.put("lecturer", bcom.getLecturer());
		
		
		jdbcTemplate.update(SQL, params);
	}

}
