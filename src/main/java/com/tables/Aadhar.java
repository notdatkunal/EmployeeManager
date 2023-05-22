package com.tables;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Aadhar {

	@Id
	private int id;
	private long adharnumber;
	private String address;
	public Aadhar() {
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public long getAdharnumber() {
		return adharnumber;
	}
	public void setAdharnumber(long adharnumber) {
		this.adharnumber = adharnumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
