package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.xsis.training.smkjavaweb.model.DetailPembelian;

public class DetailPembelianDaoImpl implements DetailPembelianDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(DetailPembelian detailPembelian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(detailPembelian);
		session.flush();
	}

	@Override
	public List<DetailPembelian> getAllDetail() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(DetailPembelian.class).list();
	}

}
