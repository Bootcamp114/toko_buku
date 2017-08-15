package com.xsis.training.smkjavaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.BukuPinjam;

@Repository
public class BukuPinjamDaoImpl implements BukuPinjamDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void save(BukuPinjam bkp) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(bkp);
		session.flush();
	}

}
