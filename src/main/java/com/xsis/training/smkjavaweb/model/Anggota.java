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
@Table(name="tbl_anggota")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Anggota {


	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="nik", unique = true)
	private String nik;
	private String nama;
	private String jk;
	private String alamat;
	private String pekerjaan;
	@Column(name="email", unique = true)
	private String email;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="anggota")
	private List<Peminjaman> listPeminjaman;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="anggota")
	private List<Pengembalian> listPengembalian;
	
	public Anggota() {
		// TODO Auto-generated constructor stub
	}

	public Anggota(int id, String nik, String nama, String jk, String alamat, String pekerjaan, String email,
			List<Peminjaman> listPeminjaman, List<Pengembalian> listPengembalian) {
		super();
		this.id = id;
		this.nik = nik;
		this.nama = nama;
		this.jk = jk;
		this.alamat = alamat;
		this.pekerjaan = pekerjaan;
		this.email = email;
		this.listPeminjaman = listPeminjaman;
		this.listPengembalian = listPengembalian;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNik() {
		return nik;
	}

	public void setNik(String nik) {
		this.nik = nik;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getJk() {
		return jk;
	}

	public void setJk(String jk) {
		this.jk = jk;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public String getPekerjaan() {
		return pekerjaan;
	}

	public void setPekerjaan(String pekerjaan) {
		this.pekerjaan = pekerjaan;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public List<Peminjaman> getListPeminjaman() {
		return listPeminjaman;
	}

	public void setListPeminjaman(List<Peminjaman> listPeminjaman) {
		this.listPeminjaman = listPeminjaman;
	}

	public List<Pengembalian> getListPengembalian() {
		return listPengembalian;
	}

	public void setListPengembalian(List<Pengembalian> listPengembalian) {
		this.listPengembalian = listPengembalian;
	}
	
	
}
