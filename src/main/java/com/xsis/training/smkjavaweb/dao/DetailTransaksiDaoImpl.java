package com.xsis.training.smkjavaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.DetaiTransaksi;

@Repository
public class DetailTransaksiDaoImpl implements DetailTransaksiDao{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void save(DetaiTransaksi detaiTransaksi) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(detaiTransaksi);
		session.flush();
	}

}
