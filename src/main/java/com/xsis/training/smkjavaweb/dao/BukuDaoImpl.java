package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Buku;
@Repository
public class BukuDaoImpl implements BukuDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<Buku> getAllBuku() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Buku.class).list();
	}

}