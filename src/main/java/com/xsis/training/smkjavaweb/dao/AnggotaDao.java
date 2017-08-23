package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.Anggota;

public interface AnggotaDao {

	public void save(Anggota anggota);

	public List<Anggota> getAll();

	public void delete(int id);

	public Anggota getById(int id);

	public void update(Anggota anggota);

}
