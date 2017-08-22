package com.xsis.training.smkjavaweb.javautils;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JavaUtils {
	@Autowired
	private SessionFactory sessionFactory;
	
	public String getNoUrut(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery("select seq_nourut_pembelian.nextval from dual");
		List<Long> data = query.list();
		return String.valueOf(data.get(0));
	}
}
