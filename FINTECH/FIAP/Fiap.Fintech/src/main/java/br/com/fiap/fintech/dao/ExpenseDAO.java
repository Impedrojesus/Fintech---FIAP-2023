package br.com.fiap.fintech.dao;

import java.util.List;

import br.com.fiap.fintech.entities.Expense;

public interface ExpenseDAO {
	void insert (Expense expense);
	List<Expense> getAll();
	void remove (int code);
	Expense fetchById (int expenseCode);
	List<Expense> fetchAllByUserCode(int userCode);
	void update (Expense expense);
}

