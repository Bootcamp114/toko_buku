package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.BukuPinjam;

@Repository
public class BukuPinjamDaoImpl implements BukuPinjamDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public void save(BukuPinjam bkp) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(bkp);
		session.flush();
	}
	@Override
	public BukuPinjam getBukuPinjamByKode(String kode) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from BukuPinjam where noBuku =:kode");
		query.setString("kode", kode);
		List<BukuPinjam> bukuPinjam = query.list();
		if(!bukuPinjam.isEmpty())
		return bukuPinjam.get(0);
		else
			return null;
	}
}
