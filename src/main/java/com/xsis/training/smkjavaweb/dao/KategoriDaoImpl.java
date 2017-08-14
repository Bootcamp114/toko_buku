package com.xsis.training.smkjavaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.xsis.training.smkjavaweb.model.Kategori;

@Repository
public class KategoriDaoImpl implements KategoriDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void save(Kategori kategori) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(kategori);
		session.flush();
	}
	
}
