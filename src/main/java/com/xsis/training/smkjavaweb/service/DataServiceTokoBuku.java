package com.xsis.training.smkjavaweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training.smkjavaweb.dao.AnggotaDao;
import com.xsis.training.smkjavaweb.dao.DistributorDao;
import com.xsis.training.smkjavaweb.dao.KategoriDao;
import com.xsis.training.smkjavaweb.dao.PenulisDao;
import com.xsis.training.smkjavaweb.dao.RencanaBeli;
import com.xsis.training.smkjavaweb.model.Anggota;
import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.Distributor;
import com.xsis.training.smkjavaweb.model.Kategori;
import com.xsis.training.smkjavaweb.model.Penulis;

@Service
@Transactional
public class DataServiceTokoBuku {

	@Autowired
	private AnggotaDao angg	otaDao;
	private RencanaBeli rencanaBeli;
	private PenulisDao penulisDao;
	@Autowired
	private KategoriDao kategoriDao;
	@Autowired
	private DistributorDao distributorDao;
	

	public void save(Anggota anggota) {
		// TODO Auto-generated method stub
		anggotaDao.save(anggota);
	}

	public void save(Buku buku) {
		// TODO Auto-generated method stub
		rencanaBeli.save(buku);
	}

	public void save(Penulis penulis) {
		// TODO Auto-generated method stub
		penulisDao.save(penulis);
	}

	public void save(Kategori kategori) {
		// TODO Auto-generated method stub
		kategoriDao.save(kategori);
	}

	public void saveDistributor(Distributor distributor) {
		// TODO Auto-generated method stub
		distributorDao.save(distributor);
	}

}
