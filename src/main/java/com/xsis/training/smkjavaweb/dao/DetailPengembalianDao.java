package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.model.DetailPeminjaman;
import com.xsis.training.smkjavaweb.model.DetailPengembalian;
import com.xsis.training.smkjavaweb.model.Peminjaman;


public interface DetailPengembalianDao {

	void save(Peminjaman peminjaman);

	List<DetailPengembalian> getAll();

	List<BukuPinjam> searchBukuByKode(BukuPinjam bukuPinjam);

	Peminjaman getBukuPengembalianByKode(String kode);

	void save(DetailPeminjaman detailPeminjaman);

	void save(DetailPengembalian detailPengembalian);


}
