package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Kasir;

@Repository
public class KasirDaoImpl implements KasirDao{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void save(Kasir kasir) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(kasir);
		session.flush();
	}

	@Override
	public void update(Kasir kasir) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(kasir);
		session.flush();
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Kasir kasir = new Kasir();
		kasir.setId(id);
		kasir.setNamaKasir("lulu");
		session.delete(kasir);
		session.flush();
	}

	@Override
	public List<Kasir> getAllKasir() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Kasir> list = session.createCriteria(Kasir.class).list();
		return list;
	}

	@Override
	public Kasir getKasirById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Kasir kasir = session.get(Kasir.class, id);
		return kasir;
	}

}
