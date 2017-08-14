package com.xsis.training.smkjavaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Buku;

@Repository
public class RencanaBeliImpl implements RencanaBeli {
	
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(Buku buku) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(buku);
		session.flush();
	}
	
}
