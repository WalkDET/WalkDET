package com.techelevator.model;

import java.util.List;

public interface LandmarksDAO {
	
	public List<Landmarks> listOfLandmarks();
	
	public Landmarks landmarkById(Long id);

	public Landmarks addLandmark(Landmarks landmark);
	
	public Landmarks addUserSuggestedLandmark(Landmarks landmark);
	
	public List<Landmarks> listOfUserSuggestedLandmarks();
	
	public void deleteLandmark(Long id);
	
	public Landmarks updateLandmarkById(Landmarks landmark);
}