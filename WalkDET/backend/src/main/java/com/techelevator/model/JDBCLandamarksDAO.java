package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCLandamarksDAO implements LandmarksDAO {
	
	private JdbcTemplate jdbcTemplate;
	List<Landmarks> userSuggestedLandmarks=new ArrayList<Landmarks>();
	
	@Autowired
	public JDBCLandamarksDAO(DataSource dataSource) {
		this.jdbcTemplate=new JdbcTemplate(dataSource);
	}

	@Override
	public List<Landmarks> listOfLandmarks() {
		List<Landmarks> allLandmarks=new ArrayList<Landmarks>();
		String sqlSelectAllLandmarks="SELECT * FROM landmarks";
		SqlRowSet results=jdbcTemplate.queryForRowSet(sqlSelectAllLandmarks);
		while(results.next()) {
			Landmarks landmark=new Landmarks();
			landmark.setLandmarkId(results.getLong("landmark_id"));
			landmark.setName(results.getString("name"));
			landmark.setAddress(results.getString("address"));
			landmark.setCoordinateX(results.getString("coordinate_x"));
			landmark.setCoordinateY(results.getString("coordinate_y"));
			landmark.setVenueType(results.getString("venue_type"));
			landmark.setDescription(results.getString("description"));
			landmark.setWebsite(results.getString("website"));
			landmark.setImages(results.getString("images"));
			landmark.setSunday(results.getString("sunday"));
			landmark.setMonday(results.getString("monday"));
			landmark.setTuesday(results.getString("tuesday"));
			landmark.setWednesday(results.getString("wednesday"));
			landmark.setThursday(results.getString("thursday"));
			landmark.setFriday(results.getString("friday"));
			landmark.setSaturday(results.getString("saturday"));
			allLandmarks.add(landmark);
		}
		return allLandmarks;
	}
	
	@Override
	public Landmarks landmarkById(Long id) {
		Landmarks landmark=new Landmarks();
		String sqlSelectAllLandmarks="SELECT * FROM landmarks WHERE landmark_id = ?";
		SqlRowSet results=jdbcTemplate.queryForRowSet(sqlSelectAllLandmarks, id);
		while(results.next()) {
			landmark.setLandmarkId(results.getLong("landmark_id"));
			landmark.setName(results.getString("name"));
			landmark.setAddress(results.getString("address"));
			landmark.setCoordinateX(results.getString("coordinate_x"));
			landmark.setCoordinateY(results.getString("coordinate_y"));
			landmark.setVenueType(results.getString("venue_type"));
			landmark.setDescription(results.getString("description"));
			landmark.setWebsite(results.getString("website"));
			landmark.setImages(results.getString("images"));
			landmark.setSunday(results.getString("sunday"));
			landmark.setMonday(results.getString("monday"));
			landmark.setTuesday(results.getString("tuesday"));
			landmark.setWednesday(results.getString("wednesday"));
			landmark.setThursday(results.getString("thursday"));
			landmark.setFriday(results.getString("friday"));
			landmark.setSaturday(results.getString("saturday"));
		}
		return landmark;
	}

	@Override
	public Landmarks addLandmark(Landmarks landmark) {
		String sqlAddNewLandmark="INSERT INTO landmarks (name, address, coordinate_x, coordinate_y,"
				+ "venue_type, description, website, images, sunday, monday, tuesday, wednesday, "
				+ "thursday, friday, saturday) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sqlAddNewLandmark, landmark.getName(), landmark.getAddress(), landmark.getCoordinateX(), landmark.getCoordinateY(), 
				landmark.getVenueType(), landmark.getDescription(), landmark.getWebsite(), landmark.getImages(), landmark.getSunday(), 
				landmark.getMonday(), landmark.getTuesday(), landmark.getWednesday(), landmark.getThursday(), landmark.getFriday(), landmark.getSaturday());
		return landmark;
	}
	
	@Override
	public Landmarks addUserSuggestedLandmark(Landmarks landmark) {
		userSuggestedLandmarks.add(landmark);
		return landmark;
	}
	
	@Override
	public List<Landmarks> listOfUserSuggestedLandmarks(){
		return userSuggestedLandmarks;
	}

	@Override
	public void deleteLandmark(Long id) {
		String sqlDeleteLandmark="DELETE FROM landmarks WHERE landmark_id = ?";
		jdbcTemplate.update(sqlDeleteLandmark, id);
	}
	
	@Override
	public Landmarks updateLandmarkById(Landmarks landmark) {
		String sqlAddNewLandmark="UPDATE landmarks SET name = ?, address = ?, coordinate_x = ?, coordinate_y = ?, venue_type = ?, "
				+ "description = ?, website = ?, images = ?, sunday = ?, monday = ?, tuesday = ?, wednesday = ?, thursday = ?, "
				+ "friday = ?, saturday = ? WHERE landmark_id = ?;";
		jdbcTemplate.update(sqlAddNewLandmark, landmark.getName(), landmark.getAddress(), landmark.getCoordinateX(), landmark.getCoordinateY(), 
				landmark.getVenueType(), landmark.getDescription(), landmark.getWebsite(), landmark.getImages(), landmark.getSunday(), 
				landmark.getMonday(), landmark.getTuesday(), landmark.getWednesday(), landmark.getThursday(), 
				landmark.getFriday(), landmark.getSaturday(), landmark.getLandmarkId());
		return landmark;
	}
}