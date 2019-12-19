package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCCheckInDAO implements CheckInDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCCheckInDAO(DataSource dataSource) {
		this.jdbcTemplate =new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<CheckIn> displayAllUserCheckIns(String username) {
		List<CheckIn> userCheckIns=new ArrayList<CheckIn>();
		String sqlSelectLandmarkIdsByUserId="SELECT * FROM user_checkins WHERE username = ?";
		SqlRowSet results=jdbcTemplate.queryForRowSet(sqlSelectLandmarkIdsByUserId, username);
		while(results.next()) {
			CheckIn checkIns=new CheckIn();
			checkIns.setLandmarkId(results.getLong("landmark_id"));
			checkIns.setCheckInDate(results.getDate("checkin_date"));
			userCheckIns.add(checkIns);
		}
		return userCheckIns;
	}
	
	@Override
	public CheckIn checkIfUserIdExistsInCheckInTable(String username) {
		CheckIn userCheckIn=new CheckIn();
		String sqlFindUserId="SELECT * FROM user_checkins WHERE username = ?";
		SqlRowSet results=jdbcTemplate.queryForRowSet(sqlFindUserId, username);
		while(results.next()) {
			userCheckIn.setUsername(results.getString("username"));
		}
		return userCheckIn;
	}
	
	@Override
	public CheckIn userChecksIntoLandmark(CheckIn checkIn) {
		String sqlUserChecksIn="INSERT INTO user_checkins (username, landmark_id, checkin_date) VALUES (?, ?, NOW());";
		jdbcTemplate.update(sqlUserChecksIn, checkIn.getUsername(), checkIn.getLandmarkId());
		
		String sqlDoesCheckedInLandmarkExistInUserItinerary="SELECT * FROM user_itinerary WHERE landmark_id = ? AND username = ?";
		SqlRowSet results=jdbcTemplate.queryForRowSet(sqlDoesCheckedInLandmarkExistInUserItinerary, checkIn.getLandmarkId(), checkIn.getUsername());
		if(!results.wasNull()) {
			String sqlDeleteItineraryItem="DELETE FROM user_itinerary WHERE landmark_id = ? AND username = ?";
			jdbcTemplate.update(sqlDeleteItineraryItem, checkIn.getLandmarkId(), checkIn.getUsername());
		}
		return checkIn;
	}
	
	@Override
	public void deleteUserCheckIns(String username) {
		String sqlDeleteUserCheckIns="DELETE FROM user_checkins WHERE username = ?";
		jdbcTemplate.update(sqlDeleteUserCheckIns, username);
	}
}