package com.xsis.training.smkjavaweb.dao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.xsis.training.smkjavaweb.model.Penulis;

@Repository
public class PenulisDaoImpl implements PenulisDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void save(Penulis penulis) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(penulis);
		session.flush();
	}

}
