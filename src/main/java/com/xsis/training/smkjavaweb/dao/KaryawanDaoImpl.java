package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class KaryawanDaoImpl implements KaryawanDao{

	@Autowired
	private SessionFactory sessionFactory;
	
}
