package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.model.DetailPeminjaman;
import com.xsis.training.smkjavaweb.model.Peminjaman;


public interface DetailPeminjamanDao {

	void save(DetailPeminjaman peminjaman);

	List<DetailPeminjaman> getAll();

	List<BukuPinjam> searchBukuByKode(BukuPinjam bukuPinjam);

	DetailPeminjaman getBukuPengembalianByKode(String kode);

	void save(Peminjaman peminjaman);


}
