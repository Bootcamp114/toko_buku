package com.xsis.training.smkjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training.smkjavaweb.dao.KasirDao;
import com.xsis.training.smkjavaweb.model.Kasir;

@Service
@Transactional
public class DataServiceKasir {
	@Autowired
	KasirDao kasirDao;
	
	public void saveKasir(Kasir kasir){
		kasirDao.save(kasir);
	}
	
	public void updateKasir(Kasir kasir){
		kasirDao.update(kasir);
	}
	
	public void deleteKasir(int id){
		kasirDao.delete(id);
	}
	
	public List<Kasir> getAllKasir(){
		return kasirDao.getAllKasir();
	}
	
	public Kasir getKasirById(int id){
		return kasirDao.getKasirById(id);
	}
}
