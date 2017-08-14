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
@Table(name="tbl_karyawan")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Karyawan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="nik", nullable = false, unique = true)
	private String nik;
	@Column(name="nama_karyawan")
	private String namaKaryawan;
	private String jk;
	private String alamat;
	private String agama;
	private String no_hp;
	@Column(name="email", unique = true)
	private String email;
	private String username;
	private String password;
	private String akses;/*
	@OneToMany(fetch = FetchType.LAZY, mappedBy="karyawan")
	private List<SumberBuku> listSumberBuku;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="karyawan")
	private List<Pengembalian> listPengembalian;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="karyawan")
	private List<Peminjaman> listPeminjaman;*/
	/*punya sekhul*/
	@OneToMany(fetch=FetchType.LAZY, mappedBy="karyawan")
	private List<TransaksiPembelian>transaksiPembelians;
	
	public Karyawan() {
		// TODO Auto-generated constructor stub
	}

	public Karyawan(int id, String nik, String namaKaryawan, String jk, String alamat, String agama, String no_hp,
			String email, String username, String password, String akses,
			List<TransaksiPembelian> transaksiPembelians) {
		super();
		this.id = id;
		this.nik = nik;
		this.namaKaryawan = namaKaryawan;
		this.jk = jk;
		this.alamat = alamat;
		this.agama = agama;
		this.no_hp = no_hp;
		this.email = email;
		this.username = username;
		this.password = password;
		this.akses = akses;
		this.transaksiPembelians = transaksiPembelians;
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

	public String getNamaKaryawan() {
		return namaKaryawan;
	}

	public void setNamaKaryawan(String namaKaryawan) {
		this.namaKaryawan = namaKaryawan;
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

	public String getAgama() {
		return agama;
	}

	public void setAgama(String agama) {
		this.agama = agama;
	}

	public String getNo_hp() {
		return no_hp;
	}

	public void setNo_hp(String no_hp) {
		this.no_hp = no_hp;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAkses() {
		return akses;
	}

	public void setAkses(String akses) {
		this.akses = akses;
	}

	public List<TransaksiPembelian> getTransaksiPembelians() {
		return transaksiPembelians;
	}

	public void setTransaksiPembelians(List<TransaksiPembelian> transaksiPembelians) {
		this.transaksiPembelians = transaksiPembelians;
	}
	
	

	
}
