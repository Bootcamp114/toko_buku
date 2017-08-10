package com.xsis.training.smkjavaweb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training.smkjavaweb.dao.AnggotaDao;
import com.xsis.training.smkjavaweb.model.Anggota;

@Service
@Transactional
public class DataServiceTokoBuku {

	@Autowired
	private AnggotaDao anggotaDao;

	public void save(Anggota anggota) {
		// TODO Auto-generated method stub
		anggotaDao.save(anggota);
	}
}
