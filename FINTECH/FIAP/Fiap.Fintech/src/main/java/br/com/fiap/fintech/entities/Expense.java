package br.com.fiap.fintech.entities;

import java.io.Serializable;
import java.util.Calendar;

public class Expense extends Entry implements Serializable {
	private static final long serialVersionUID = 1L;

	private String wasPaid;
	
	public Expense () { super(); };
	
	public Expense(int expenseCode, int userCode, double expenseValue, String expenseName, Calendar expenseDate,
			String wasPaid, String isFixedExpense, String description) {
		super(expenseCode, userCode, expenseValue,  expenseName,  expenseDate, isFixedExpense, description);
		this.wasPaid = wasPaid;
	}

	public String getWasPaid() {
		return wasPaid;
	}

	public void setWasPaid(String wasPaid) {
		this.wasPaid = wasPaid;
	}
}