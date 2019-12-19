package com.techelevator.model;

import java.util.List;

public interface CheckInDAO {
	
	public List<CheckIn> displayAllUserCheckIns(String username);
	
	public CheckIn checkIfUserIdExistsInCheckInTable(String username);
	
	public CheckIn userChecksIntoLandmark(CheckIn checkIn);
	
	public void deleteUserCheckIns(String username);

}