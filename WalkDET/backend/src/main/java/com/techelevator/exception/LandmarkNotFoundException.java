package com.techelevator.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code=HttpStatus.NOT_FOUND)
public class LandmarkNotFoundException extends RuntimeException {

	private static final long serialVersionUID = -3116764779612627655L;
	
	private Long landmarkId;
	
	public LandmarkNotFoundException(Long id, String message) {
		super(message);
		setLandmarkId(id);
	}
	
	public Long getLandmarkId() {
		return landmarkId;
	}
	
	public void setLandmarkId(Long landmarkId) {
		this.landmarkId=landmarkId;
	}
}