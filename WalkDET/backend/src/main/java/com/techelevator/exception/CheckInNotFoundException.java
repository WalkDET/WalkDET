package com.techelevator.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code=HttpStatus.NOT_FOUND)
public class CheckInNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 2770693898118815255L;
	
	private String username;

	public CheckInNotFoundException(String username, String message) {
		super(message);
		setUsername(username);
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}