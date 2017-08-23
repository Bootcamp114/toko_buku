package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.BukuPinjam;
import com.xsis.training.smkjavaweb.model.DetailPeminjaman;
import com.xsis.training.smkjavaweb.model.Peminjaman;


@Repository
public class DetailPeminjamanDaoImpl implements DetailPeminjamanDao{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void save(Peminjaman peminjaman) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<DetailPeminjaman> getAll() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<DetailPeminjaman> list = session.createCriteria(DetailPeminjaman.class).list();
		return list;
	}

	@Override
	public List<BukuPinjam> searchBukuByKode(BukuPinjam bukuPinjam) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DetailPeminjaman getBukuPengembalianByKode(String kode) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from DetailPeminjaman where bukuPinjam.noBuku =:kode");
		query.setString("kode", kode);
		List<DetailPeminjaman> buku = query.list();
		if(!buku.isEmpty())
			return buku.get(0);
			else
				return null;
	}

	@Override
	public void save(DetailPeminjaman detailPeminjaman) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(detailPeminjaman);
		session.flush();
	}

	

}
