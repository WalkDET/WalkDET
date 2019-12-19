package com.techelevator.model;

import java.util.List;

public interface ItineraryDAO {

	public List<Landmarks> userItineraryList(String username);

	public Itinerary addItineraryItem(Itinerary itinerary);

	public Itinerary itineraryItemByUsername(String username);

	public void deleteItineraryItem(Long landmarkId, String username);

	public void deleteUserItinerary(String username);

}