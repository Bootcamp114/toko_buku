package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.model.Peminjaman;


public interface PeminjamanDao {

	void save(Peminjaman peminjaman);

	List<Peminjaman> getAll();

	List<BukuPinjam> searchBukuByKode(BukuPinjam bukuPinjam);

	Peminjaman getBukuPengembalianByKode(String kode);


}
