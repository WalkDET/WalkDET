package com.techelevator.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.exception.LandmarkNotFoundException;
import com.techelevator.exception.NonAdministratorException;
import com.techelevator.model.Landmarks;
import com.techelevator.model.LandmarksDAO;

@RestController
@RequestMapping("/api/landmarks")
@CrossOrigin
public class LandmarksController {
	
	private LandmarksDAO landmarksDao;
	
	public LandmarksController(LandmarksDAO landmarksDao) {
		this.landmarksDao=landmarksDao;
	}
	
	@GetMapping
	public List<Landmarks> getListOfLandmarks() {
		return landmarksDao.listOfLandmarks();
	}
	
	@GetMapping("/role/{role}")
	public List<Landmarks> viewUserSuggestedLandmarks(@PathVariable String role){
		if(role.equals("admin")) {
			return landmarksDao.listOfUserSuggestedLandmarks();
		} else {
			throw new NonAdministratorException("User Is Not An Administrator");
		}
	}
	
	@GetMapping("/{id}")
	public Landmarks getSpecificLandmark(@PathVariable Long id) {
		Landmarks requestedLandmark=landmarksDao.landmarkById(id);
		if(requestedLandmark !=null) {
			return requestedLandmark;
		} else {
			throw new LandmarkNotFoundException(id, "Landmark Not Found");
		}
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public Landmarks userSuggestsALandmark(@RequestBody Landmarks landmark) {
		return landmarksDao.addUserSuggestedLandmark(landmark);
	}
	
	@PostMapping("/role/{role}")
	@ResponseStatus(HttpStatus.CREATED)
	public Landmarks addSuggestedLandmark(@RequestBody Landmarks landmark, @PathVariable String role) {
		if(role.equals("admin")) {
			return landmarksDao.addLandmark(landmark);
		} else {
			throw new NonAdministratorException("User Is Not An Administrator");
		}
	}
	
	@PutMapping("/role/{role}")
	public Landmarks adminUpdateLandmarkById(@RequestBody Landmarks landmark, @PathVariable String role) {
		if(role.equals("admin")) {
			return landmarksDao.updateLandmarkById(landmark);
		} else {
			throw new NonAdministratorException("User Is Not An Administrator");
		}
	}
	
	@DeleteMapping("/{id}")
	public void removeLandmark(@PathVariable Long id) {
		Landmarks requestedLandmark=landmarksDao.landmarkById(id);
		if(requestedLandmark !=null) {
			landmarksDao.deleteLandmark(id);
		} else {
			throw new LandmarkNotFoundException(id, "Landmark Not Found");
		}
	}
}