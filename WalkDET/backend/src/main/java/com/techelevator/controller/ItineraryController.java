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

import com.techelevator.exception.ItineraryItemNotFoundException;
import com.techelevator.model.Itinerary;
import com.techelevator.model.ItineraryDAO;
import com.techelevator.model.Landmarks;

@RestController
@RequestMapping("/api/itinerary")
@CrossOrigin
public class ItineraryController {
	
	private ItineraryDAO itineraryDao;

	public ItineraryController(ItineraryDAO itineraryDao) {
		this.itineraryDao = itineraryDao;
	}
	
	@GetMapping("/{username}")
	public List<Landmarks> displayItineraryList(@PathVariable String username){
		Itinerary requestedItem=itineraryDao.itineraryItemByUsername(username);
		if(requestedItem != null) {
			return itineraryDao.userItineraryList(username);
		} else {
			throw new ItineraryItemNotFoundException(username, "Itinerary Item Not Found");
		}
	}
	
	@PostMapping
	@ResponseStatus(HttpStatus.CREATED)
	public Itinerary addNewItineraryItem(@RequestBody Itinerary itinerary) {
		return itineraryDao.addItineraryItem(itinerary);
	}
	
	@DeleteMapping("/{username}/{landmarkId}")
	public void removeItineraryItem(@PathVariable String username, @PathVariable Long landmarkId) {
		Itinerary requestedItem=itineraryDao.itineraryItemByUsername(username);
		if(requestedItem != null) {
			itineraryDao.deleteItineraryItem(landmarkId, username);
		} else {
			throw new ItineraryItemNotFoundException(username, "Itinerary Item Not Found");
		}
	}
	
	@DeleteMapping("/{username}")
	public void deleteWholeUserItinerary(@PathVariable String username) {
		Itinerary requestedItem=itineraryDao.itineraryItemByUsername(username);
		if(requestedItem != null) {
			itineraryDao.deleteUserItinerary(username);
		} else {
			throw new ItineraryItemNotFoundException(username, "User Itinerary Not Found");
		}
	}
}