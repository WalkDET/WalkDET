package com.techelevator.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.exception.CheckInNotFoundException;
import com.techelevator.model.CheckIn;
import com.techelevator.model.CheckInDAO;

@RestController
@RequestMapping("/api/checkins")
@CrossOrigin
public class CheckInController {
	
	private CheckInDAO checkInDao;

	public CheckInController(CheckInDAO checkInDao) {
		this.checkInDao = checkInDao;
	}
	
	@GetMapping("/{username}")
	public List<CheckIn> getListOfUserLandmarks(@PathVariable String username) {
		CheckIn requestedCheckIn=checkInDao.checkIfUserIdExistsInCheckInTable(username);
		if(requestedCheckIn != null) {
			return checkInDao.displayAllUserCheckIns(username);
		} else {
			throw new CheckInNotFoundException(username, "User Check-In Not Found");
		}
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public CheckIn userChecksIntoLandmark(@RequestBody CheckIn checkIn) {
		return checkInDao.userChecksIntoLandmark(checkIn);
	}
	
	@DeleteMapping("/{username}")
	public void removeUserCheckIns(@PathVariable String username) {
		CheckIn requestedCheckIn=checkInDao.checkIfUserIdExistsInCheckInTable(username);
		if(requestedCheckIn != null) {
			checkInDao.deleteUserCheckIns(username);
		} else {
			throw new CheckInNotFoundException(username, "User Check-In Not Found");
		}
	}
}