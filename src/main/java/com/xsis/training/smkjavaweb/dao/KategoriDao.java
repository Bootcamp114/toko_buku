package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.Kategori;

public interface KategoriDao {

	void save(Kategori kategori);

	List<Kategori> getAllKategori();

	void deleteKategori(int id);
	
}
