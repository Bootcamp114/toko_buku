package com.xsis.training.smkjavaweb.dao;

import java.util.List;

import com.xsis.training.smkjavaweb.model.Distributor;

public interface DistributorDao {

	void save(Distributor distributor);

	List<Distributor> getAllDistributor();

}
