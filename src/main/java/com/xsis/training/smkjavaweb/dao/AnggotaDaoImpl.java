package com.xsis.training.smkjavaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Anggota;

@Repository
public class AnggotaDaoImpl implements AnggotaDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void save(Anggota anggota) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(anggota);
		session.flush();
	}

}
