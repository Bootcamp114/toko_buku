package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.Buku;

public interface BukuDao {

	List<Buku> getAllBuku();

	void delete(int id);

	Buku getBukuById(int id);

	void update(Buku buku);
}
