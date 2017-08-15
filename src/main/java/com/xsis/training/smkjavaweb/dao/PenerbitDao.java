package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.Penerbit;

public interface PenerbitDao {

	void save(Penerbit penerbit);

	List<Penerbit> getAllPenerbit();


}
