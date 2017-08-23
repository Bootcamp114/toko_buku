package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.Kasir;

public interface KasirDao {
	
	public void save(Kasir kasir);
	
	public void update(Kasir member);
	
	public void delete(int id);
	
	public List<Kasir> getAllKasir();
	
	public Kasir getKasirById(int id);
}
