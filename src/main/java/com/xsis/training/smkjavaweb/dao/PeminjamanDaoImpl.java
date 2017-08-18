package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.model.Peminjaman;


@Repository
public class PeminjamanDaoImpl implements PeminjamanDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Peminjaman peminjaman) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(peminjaman);
		session.flush();
	}

	@Override
	public List<Peminjaman> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<Peminjaman> list = session.createCriteria(Peminjaman.class).list();
		return list;
	}

	@Override
	public List<BukuPinjam> searchBukuByKode(BukuPinjam bukuPinjam) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from BukuPinjam as bukuPinjam where bukuPinjam.noBuku like :name");
		query.setString("name", "%"+bukuPinjam.getNoBuku()+"%");
		
		List<BukuPinjam> lists = query.list();
		if(lists.isEmpty())
			return null;
		else
		return lists;
	}

	@Override
	public Peminjaman getBukuPengembalianByKode(String kode) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Peminjaman where bukuPinjam.noBuku =:kode");
		query.setString("kode", kode);
		List<Peminjaman> buku = query.list();
		if(!buku.isEmpty())
			return buku.get(0);
			else
				return null;
	}


}
