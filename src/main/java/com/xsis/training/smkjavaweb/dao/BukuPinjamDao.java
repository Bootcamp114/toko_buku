package com.xsis.training.smkjavaweb.dao;

import com.xsis.training.smkjavaweb.model.BukuPinjam;

public interface BukuPinjamDao {

	void save(BukuPinjam bkp);

	BukuPinjam getBukuPinjamByKode(String kode);

	void updateStatus(String string);

}
