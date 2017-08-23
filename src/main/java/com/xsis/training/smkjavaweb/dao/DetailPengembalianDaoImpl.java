package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.model.DetailPeminjaman;
import com.xsis.training.smkjavaweb.model.DetailPengembalian;
import com.xsis.training.smkjavaweb.model.Peminjaman;


@Repository
public class DetailPengembalianDaoImpl implements DetailPengembalianDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Peminjaman peminjaman) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<DetailPengembalian> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<DetailPengembalian> list = session.createCriteria(DetailPengembalian.class).list();
		return list;
	}

	@Override
	public List<BukuPinjam> searchBukuByKode(BukuPinjam bukuPinjam) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Peminjaman getBukuPengembalianByKode(String kode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void save(DetailPeminjaman detailPeminjaman) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(DetailPengembalian detailPengembalian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(detailPengembalian);
		session.flush();
	}

	

}
