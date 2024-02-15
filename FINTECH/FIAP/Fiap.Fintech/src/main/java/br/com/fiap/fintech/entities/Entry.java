package br.com.fiap.fintech.entities;

import java.io.Serializable;
import java.util.Calendar;

public class Entry implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private	int entryCode;
	private int userCode;
	private double entryValue;
	private String entryName;
	private Calendar entryDate;
	private String isFixedEntry;
	private String description;
	private boolean isRevenue;

	public Entry() { super(); }

	public Entry(int entryCode, int userCode, double entryValue, String entryName, Calendar entryDate,
			String isFixedEntry, String description) {
		super();
		this.entryCode = entryCode;
		this.userCode = userCode;
		this.entryValue = entryValue;
		this.entryName = entryName;
		this.entryDate = entryDate;
		this.isFixedEntry = isFixedEntry;
		this.description = description;
	}
	
	public int getEntryCode() {
		return entryCode;
	}
	public int getUserCode() {
		return userCode;
	}
	public double getEntryValue() {
		return entryValue;
	}
	public String getEntryName() {
		return entryName;
	}
	public Calendar getEntryDate() {
		return entryDate;
	}
	public String getIsFixedEntry() {
		return isFixedEntry;
	}
	public String getDescription() {
		return description;
	}
	public void setEntryCode(int entryCode) {
		this.entryCode = entryCode;
	}
	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}
	public void setEntryValue(double entryValue) {
		this.entryValue = entryValue;
	}
	public void setEntryName(String entryName) {
		this.entryName = entryName;
	}
	public void setEntryDate(Calendar entryDate) {
		this.entryDate = entryDate;
	}
	public void setIsFixedEntry(String isFixedEntry) {
		this.isFixedEntry = isFixedEntry;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public boolean getIsRevenue() {
		return isRevenue;
	}
	public void setisRevenue(boolean isRevenue) {
		this.isRevenue = isRevenue;
	}
}
