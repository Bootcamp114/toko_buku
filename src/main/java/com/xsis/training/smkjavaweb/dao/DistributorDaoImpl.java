package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Buku;
import com.xsis.training.smkjavaweb.model.Distributor;

@Repository
public class DistributorDaoImpl implements DistributorDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void save(Distributor distributor) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(distributor);
		session.flush();
	}

	@Override
	public List<Distributor> getAllDistributor() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.createCriteria(Distributor.class).list();
	}

}
