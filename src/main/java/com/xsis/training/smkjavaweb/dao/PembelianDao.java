package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.DetailPembelian;
import com.xsis.training.smkjavaweb.model.Pembelian;

public interface PembelianDao {
	public void save(DetailPembelian detailPembelian);

	public List<DetailPembelian> getAllDetail();

	public void delete(int id);

	public String hitungDetail();
	
	public void pembelian(Pembelian pembelian);
}
