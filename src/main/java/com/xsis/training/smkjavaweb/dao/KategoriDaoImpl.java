package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Buku;
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

	@Override
	public List<Kategori> getAllKategori() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Kategori.class).list();
	}

	@Override
	public void deleteKategori(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Kategori kategori =new Kategori();
		kategori.setId(id);
		kategori.setJenisKategori("will delete");
		session.delete(kategori);
		session.flush();
	}
	
}
