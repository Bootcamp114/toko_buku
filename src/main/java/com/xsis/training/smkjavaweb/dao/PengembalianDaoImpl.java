package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training.smkjavaweb.model.Peminjaman;


@Repository
public class PengembalianDaoImpl implements PengembalianDao{

	@Autowired
	private SessionFactory sessionFactory;

}
