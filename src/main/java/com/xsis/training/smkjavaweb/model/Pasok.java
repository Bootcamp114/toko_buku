package com.xsis.training.smkjavaweb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name = "tbl_pasok")
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class Pasok {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private Integer id;
	@Column(name="kode_distributor", unique=true)
	private String kode_distributor;
	private String nama_distributor;
	private Integer jumlah;
	// @ManyToOne
	// private Buku buku;
	@ManyToOne
	private Karyawan karyawan;
	
	public Pasok() {
		// TODO Auto-generated constructor stub
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

	public String getNama_distributor() {
		return nama_distributor;
	}

	public void setNama_distributor(String nama_distributor) {
		this.nama_distributor = nama_distributor;
	}

	public Integer getJumlah() {
		return jumlah;
	}

	public void setJumlah(Integer jumlah) {
		this.jumlah = jumlah;
	}

	public Karyawan getKaryawan() {
		return karyawan;
	}

	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}

	public Pasok(Integer id, String kode_distributor, String nama_distributor, Integer jumlah, Karyawan karyawan) {
		super();
		this.id = id;
		this.kode_distributor = kode_distributor;
		this.nama_distributor = nama_distributor;
		this.jumlah = jumlah;
		this.karyawan = karyawan;
	}
	
	
}
