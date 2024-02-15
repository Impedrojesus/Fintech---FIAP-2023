package br.com.fiap.fintech.factory;

import br.com.fiap.fintech.dao.ExpenseDAO;
import br.com.fiap.fintech.dao.RevenueDAO;
import br.com.fiap.fintech.dao.impl.OracleExpenseDAO;
import br.com.fiap.fintech.dao.impl.OracleRevenueDAO;

public abstract class DAOFactory {
	public static RevenueDAO getRevenueDAO() {
		return new OracleRevenueDAO();
	}
	public static ExpenseDAO getExpenseDAO() {
		return new OracleExpenseDAO();
	}
}
