package br.com.fiap.fintech.singleton;

import java.io.Serializable;

public class Dashboard implements Serializable {
	private static final long serialVersionUID = 1L;
	private static Dashboard instance;

	private Dashboard(){}

	public static Dashboard getInstance() {
		if (instance == null)
			instance = new Dashboard();
		return instance;
	}
	
//	private  selectedMonth;
	private double startWithBalance;
	private double currentBalance;
	private double expectedToCloseWithBalance;
	private double monthlyRevenueValue;
	private double monthlyExpenseValue;
	
	public double getStartWithBalance() {
		return startWithBalance;
	}
	public double getCurrentBalance() {
		return currentBalance;
	}
	public double getExpectedToCloseWithBalance() {
		return expectedToCloseWithBalance;
	}
	public double getMonthlyRevenueValue() {
		return monthlyRevenueValue;
	}
	public double getMonthlyExpenseValue() {
		return monthlyExpenseValue;
	}
	public void setStartWithBalance(double startWithBalance) {
		this.startWithBalance = startWithBalance;
	}
	public void setCurrentBalance(double currentBalance) {
		this.currentBalance = currentBalance;
	}
	public void setExpectedToCloseWithBalance(double getExpectedToCloseWithBalance) {
		this.expectedToCloseWithBalance = getExpectedToCloseWithBalance;
	}
	public void setMonthlyRevenueValue(double monthlyRevenueValue) {
		this.monthlyRevenueValue = monthlyRevenueValue;
	}
	public void setMonthlyExpenseValue(double monthlyExpenseValue) {
		this.monthlyExpenseValue = monthlyExpenseValue;
	}
	
	public void clean() {
		setStartWithBalance(0);
		setCurrentBalance(0);
		setExpectedToCloseWithBalance(0);
		setMonthlyRevenueValue(0);
		setMonthlyExpenseValue(0);
	}
}
