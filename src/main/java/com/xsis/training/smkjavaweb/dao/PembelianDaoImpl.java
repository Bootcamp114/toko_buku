package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.DetailPembelian;
import com.xsis.training.smkjavaweb.model.Pembelian;

@Repository
public class PembelianDaoImpl implements PembelianDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(DetailPembelian detailPembelian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(detailPembelian);
		session.flush();
	}

	@Override
	public List<DetailPembelian> getAllDetail() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<DetailPembelian> list = session.createCriteria(DetailPembelian.class).list();
		return list;
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		DetailPembelian detailPembelian = new DetailPembelian();
		detailPembelian.setId(id);
		detailPembelian.setJumlahBeli(3);
		session.delete(detailPembelian);
		session.flush();
	}
	
	@Override
	public String hitungDetail(){
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("SELECT sum(totalHarga) FROM " + DetailPembelian.class.getName());
		List<Long> data = query.list();
		return String.valueOf(data.get(0));
	}

	@Override
	public void pembelian(Pembelian pembelian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(pembelian);
		session.flush();
	}

}
