package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Peminjaman;


@Repository
public class PeminjamanDaoImpl implements PeminjamanDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Peminjaman peminjaman) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(peminjaman);
		session.flush();
	}

	@Override
	public List<Peminjaman> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Peminjaman> list = session.createCriteria(Peminjaman.class).list();
		return list;
	}

}
