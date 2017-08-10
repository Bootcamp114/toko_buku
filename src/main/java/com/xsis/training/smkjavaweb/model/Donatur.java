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
@Table(name="tbl_donatur")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Donatur {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	private String nama;
	private String alamat;
	private String telepon;
	@Column(name="email", unique = true)
	private String email;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="donatur")
	private List<SumberBuku> list_sumber_buku;

	public Donatur() {
		// TODO Auto-generated constructor stub
	}

	public Donatur(int id, String nama, String alamat, String telepon, String email,
			List<SumberBuku> list_sumber_buku) {
		super();
		this.id = id;
		this.nama = nama;
		this.alamat = alamat;
		this.telepon = telepon;
		this.email = email;
		this.list_sumber_buku = list_sumber_buku;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public String getTelepon() {
		return telepon;
	}

	public void setTelepon(String telepon) {
		this.telepon = telepon;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<SumberBuku> getList_sumber_buku() {
		return list_sumber_buku;
	}

	public void setList_sumber_buku(List<SumberBuku> list_sumber_buku) {
		this.list_sumber_buku = list_sumber_buku;
	}
	
	
	
}