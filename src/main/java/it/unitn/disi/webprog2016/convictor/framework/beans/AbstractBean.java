/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.unitn.disi.webprog2016.convictor.framework.beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * This represents an abstract bean with common properties
 * @author umberto
 */
public class AbstractBean implements Serializable {
	
	private int id;
	private Date createdAt;
	private Date updatedAt;
	private final List<String> errors;
	
	public AbstractBean() {
		this.errors = new ArrayList<>();
	}

	public List<String> getErrors() {
		return errors;
	}
	
	public void setError(String error) {
		errors.add(error);
	}
	
	public boolean isValid(){
		return errors.isEmpty();
	}

	public int getId() {
		return id;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}
	
}
