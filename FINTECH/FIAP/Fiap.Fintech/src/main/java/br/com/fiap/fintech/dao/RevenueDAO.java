package br.com.fiap.fintech.dao;

import java.util.List;

import br.com.fiap.fintech.entities.Revenue;

public interface RevenueDAO {
	void insert (Revenue revenue);
	List<Revenue> getAll();
	void remove (int code);
	Revenue fetchById (int revenueCode);
	List<Revenue> fetchAllByUserCode(int userCode);
	void update (Revenue revenue);
}
