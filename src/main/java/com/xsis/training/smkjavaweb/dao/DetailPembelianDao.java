package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.DetailPembelian;

public interface DetailPembelianDao {
	void save(DetailPembelian detailPembelian);

	List<DetailPembelian> getAllDetail();
}
