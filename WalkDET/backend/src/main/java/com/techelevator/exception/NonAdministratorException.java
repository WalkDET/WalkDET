package com.techelevator.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code=HttpStatus.FORBIDDEN)
public class NonAdministratorException extends RuntimeException {
	
	private static final long serialVersionUID = 4133046908313123097L;

	public NonAdministratorException(String message) {
		super(message);
	}
}