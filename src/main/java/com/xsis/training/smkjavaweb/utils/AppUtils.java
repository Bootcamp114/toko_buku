package com.xsis.training.smkjavaweb.utils;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class AppUtils {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public String getNoFaktur(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("SELECT seq_nofaktur_pembelian.nextval FROM dual");
		List<Long> data = query.list();
		
		return String.valueOf(data.get(0));
	}
}
