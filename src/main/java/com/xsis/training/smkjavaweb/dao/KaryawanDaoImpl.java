package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Anggota;
import com.xsis.training.smkjavaweb.model.Karyawan;


@Repository
public class KaryawanDaoImpl implements KaryawanDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Karyawan> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Karyawan> list = session.createCriteria(Karyawan.class).list();
		return list;
	}
	
}
