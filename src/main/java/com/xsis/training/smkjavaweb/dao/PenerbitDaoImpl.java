package com.xsis.training.smkjavaweb.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Penerbit;

@Repository
public class PenerbitDaoImpl implements PenerbitDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void save(Penerbit penerbit) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(penerbit);
		session.flush();
	}

}
