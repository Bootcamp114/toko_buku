package com.xsis.training.smkjavaweb.dao;

import java.util.List;

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
	@Override
	public List<Anggota> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Anggota> list = session.createCriteria(Anggota.class).list();
		return list;
	}
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Anggota anggota = new Anggota();
		anggota.setId(id);
		session.delete(anggota);
		session.flush();
	}
	@Override
	public Anggota getById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Anggota anggota = session.get(Anggota.class, id);
		return anggota;
	}

}
