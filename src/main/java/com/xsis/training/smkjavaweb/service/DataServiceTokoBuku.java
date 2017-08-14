package com.xsis.training.smkjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.xsis.training.smkjavaweb.dao.AnggotaDao;
import com.xsis.training.smkjavaweb.dao.BukuDao;
import com.xsis.training.smkjavaweb.dao.DistributorDao;
import com.xsis.training.smkjavaweb.dao.KategoriDao;
import com.xsis.training.smkjavaweb.dao.PenerbitDao;
import com.xsis.training.smkjavaweb.dao.PenulisDao;
import com.xsis.training.smkjavaweb.dao.RencanaBeliDao;
import com.xsis.training.smkjavaweb.model.Anggota;
import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.Distributor;
import com.xsis.training.smkjavaweb.model.Kategori;
import com.xsis.training.smkjavaweb.model.Penerbit;
import com.xsis.training.smkjavaweb.model.Penulis;

@Service
@Transactional
public class DataServiceTokoBuku {

	@Autowired
	private AnggotaDao anggotaDao;
	private PenulisDao penulisDao;
	@Autowired
	private KategoriDao kategoriDao;
	@Autowired
	private DistributorDao distributorDao;
	@Autowired
	private PenerbitDao penerbitDao;
	@Autowired
	private RencanaBeliDao rencanaBeliDao;
	@Autowired
	private BukuDao bukuDao;

	public void save(Anggota anggota) {
		// TODO Auto-generated method stub
		anggotaDao.save(anggota);
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

	public void savePenerbit(Penerbit penerbit) {
		// TODO Auto-generated method stub
		penerbitDao.save(penerbit);
	}

	public void saveRencanaBeli(Buku buku) {
		// TODO Auto-generated method stub
		rencanaBeliDao.save(buku);
	}

	public List<Buku> getAllBuku() {
		// TODO Auto-generated method stub
		return bukuDao.getAllBuku();
	}
	
}
