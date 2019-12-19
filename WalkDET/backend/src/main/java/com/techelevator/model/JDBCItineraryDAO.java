package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCItineraryDAO implements ItineraryDAO {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public JDBCItineraryDAO(DataSource dataSource) {
		this.jdbcTemplate=new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Landmarks> userItineraryList(String username) {
		List<Landmarks> userItinerary=new ArrayList<Landmarks>();
		String sqlGetAllUserItinerary="SELECT * FROM user_itinerary A INNER JOIN landmarks B ON A.landmark_id = B.landmark_id WHERE A.username = ?";
		SqlRowSet results=jdbcTemplate.queryForRowSet(sqlGetAllUserItinerary, username);
		while(results.next()) {
			Landmarks itinerary=new Landmarks();
			itinerary.setName(results.getString("name"));
			itinerary.setAddress(results.getString("address"));
			itinerary.setVenueType(results.getString("venue_type"));
			itinerary.setDescription(results.getString("description"));
			itinerary.setWebsite(results.getString("website"));
			itinerary.setImages(results.getString("images"));
			itinerary.setSunday(results.getString("sunday"));
			itinerary.setMonday(results.getString("monday"));
			itinerary.setTuesday(results.getString("tuesday"));
			itinerary.setWednesday(results.getString("wednesday"));
			itinerary.setThursday(results.getString("thursday"));
			itinerary.setFriday(results.getString("friday"));
			itinerary.setSaturday(results.getString("saturday"));
			userItinerary.add(itinerary);
		}
		return userItinerary;
	}
	
	@Override
	public Itinerary addItineraryItem(Itinerary itinerary) {
		String sqlAddItineraryItem="INSERT INTO user_itinerary (username, landmark_id) VALUES (?, ?)";
		jdbcTemplate.update(sqlAddItineraryItem, itinerary.getUsername(), itinerary.getLandmarkId());
		return itinerary;
	}
	
	@Override
	public Itinerary itineraryItemByUsername(String username) {
		Itinerary itineraryItem=new Itinerary();
		String sqlFindItineraryItem="SELECT * FROM user_itinerary WHERE username = ?";
		SqlRowSet results=jdbcTemplate.queryForRowSet(sqlFindItineraryItem, username);
		while(results.next()) {
			itineraryItem.setUsername(results.getString("username"));
		}
		return itineraryItem;
	}
	
	@Override
	public void deleteItineraryItem(Long landmarkId, String username) {
		String sqlDeleteItineraryItem="DELETE FROM user_itinerary WHERE landmark_id = ? AND username = ?";
		jdbcTemplate.update(sqlDeleteItineraryItem, landmarkId, username);
	}

	@Override
	public void deleteUserItinerary(String username) {
		String sqlDeleteItineraryItem="DELETE FROM user_itinerary WHERE username = ?";
		jdbcTemplate.update(sqlDeleteItineraryItem, username);
	}
}