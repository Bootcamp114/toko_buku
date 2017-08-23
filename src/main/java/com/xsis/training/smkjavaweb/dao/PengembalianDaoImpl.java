package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Peminjaman;
import com.xsis.training.smkjavaweb.model.Pengembalian;


@Repository
public class PengembalianDaoImpl implements PengembalianDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Pengembalian pengembalian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(pengembalian);
		session.flush();
	}

}
