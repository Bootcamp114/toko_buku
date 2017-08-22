package com.xsis.training.smkjavaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.TransaksiPembelian;

@Repository
public class TransaksiPembelianDaoImpl implements TransaksiPembelianDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveTransaskiPembelian(TransaksiPembelian transaksiPembelian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(transaksiPembelian);
		session.flush();
	}

}
