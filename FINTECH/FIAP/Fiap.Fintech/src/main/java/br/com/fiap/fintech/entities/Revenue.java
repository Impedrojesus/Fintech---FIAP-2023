package br.com.fiap.fintech.entities;

import java.io.Serializable;
import java.util.Calendar;

public class Revenue extends Entry implements Serializable {
	private static final long serialVersionUID = 1L;

	private String isReceived;
	
	public Revenue () { super(); };
	
	public Revenue(int revenueCode, int userCode, double revenueValue, String revenueName, Calendar revenueDate,
			String isReceived, String isFixedRevenue, String description) {
		super(revenueCode, userCode, revenueValue,  revenueName,  revenueDate, isFixedRevenue, description);
	}

	public String getIsReceived() {
		return isReceived;
	}

	public void setIsReceived(String isReceived) {
		this.isReceived = isReceived;
	}
}