package com.xsis.training.smkjavaweb.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_distributor")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class,property="@id")
public class Distributor {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private Integer id;
	@Column(name="kode_distributor",unique=true)
	private String kode_distributor;
	private String namaDistributor;
	private String alamat_distributor;
	private String no_telpon;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="distributor")
	private List<Buku>listBuku;
	
	public Distributor() {
		// TODO Auto-generated constructor stub
	}

	public Distributor(Integer id, String kode_distributor, String namaDistributor, String alamat_distributor,
			String no_telpon, List<Buku> listBuku) {
		super();
		this.id = id;
		this.kode_distributor = kode_distributor;
		this.namaDistributor = namaDistributor;
		this.alamat_distributor = alamat_distributor;
		this.no_telpon = no_telpon;
		this.listBuku = listBuku;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getKode_distributor() {
		return kode_distributor;
	}

	public void setKode_distributor(String kode_distributor) {
		this.kode_distributor = kode_distributor;
	}

	public String getNamaDistributor() {
		return namaDistributor;
	}

	public void setNamaDistributor(String namaDistributor) {
		this.namaDistributor = namaDistributor;
	}

	public String getAlamat_distributor() {
		return alamat_distributor;
	}

	public void setAlamat_distributor(String alamat_distributor) {
		this.alamat_distributor = alamat_distributor;
	}

	public String getNo_telpon() {
		return no_telpon;
	}

	public void setNo_telpon(String no_telpon) {
		this.no_telpon = no_telpon;
	}

	public List<Buku> getListBuku() {
		return listBuku;
	}

	public void setListBuku(List<Buku> listBuku) {
		this.listBuku = listBuku;
	}
	
}
