package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.DetailPembelian;
import com.xsis.training.smkjavaweb.model.Member;

@Repository
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
		List<DetailPembelian> list = session.createCriteria(DetailPembelian.class).list();
		return list;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		DetailPembelian detailPembelian = new DetailPembelian();
		detailPembelian.setId(id);
		detailPembelian.setJumlahBeli(3);
		session.delete(detailPembelian);
		session.flush();
	}

}
