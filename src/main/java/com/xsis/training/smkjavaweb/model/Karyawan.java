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
	private String nama_karyawan;
	private String jk;
	private String alamat;
	private String agama;
	private String no_hp;
	@Column(name="email", unique = true)
	private String email;
	private String username;
	private String password;
	private String akses;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="karyawan")
	private List<Pasok> list_pasok;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="karyawan")
	private List<Pembelian> list_pembelian;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="karyawan")
	private List<SumberBuku> list_sumber_buku;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="karyawan")
	private List<Peminjaman> list_peminjaman;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="karyawan")
	private List<Pengembalian> list_pengembalian;
	
	public Karyawan() {
		// TODO Auto-generated constructor stub
	}
	
	public Karyawan(int id, String nik, String nama_karyawan, String jk, String alamat, String agama, String no_hp,
			String email, String username, String password, String akses, List<Pasok> list_pasok,
			List<Pembelian> list_pembelian, List<SumberBuku> list_sumber_buku, List<Peminjaman> list_peminjaman,
			List<Pengembalian> list_pengembalian) {
		super();
		this.id = id;
		this.nik = nik;
		this.nama_karyawan = nama_karyawan;
		this.jk = jk;
		this.alamat = alamat;
		this.agama = agama;
		this.no_hp = no_hp;
		this.email = email;
		this.username = username;
		this.password = password;
		this.akses = akses;
		this.list_pasok = list_pasok;
		this.list_pembelian = list_pembelian;
		this.list_sumber_buku = list_sumber_buku;
		this.list_peminjaman = list_peminjaman;
		this.list_pengembalian = list_pengembalian;
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
	public String getNama_karyawan() {
		return nama_karyawan;
	}
	public void setNama_karyawan(String nama_karyawan) {
		this.nama_karyawan = nama_karyawan;
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
	public List<Pasok> getList_pasok() {
		return list_pasok;
	}
	public void setList_pasok(List<Pasok> list_pasok) {
		this.list_pasok = list_pasok;
	}
	public List<Pembelian> getList_pembelian() {
		return list_pembelian;
	}
	public void setList_pembelian(List<Pembelian> list_pembelian) {
		this.list_pembelian = list_pembelian;
	}
	public List<SumberBuku> getList_sumber_buku() {
		return list_sumber_buku;
	}
	public void setList_sumber_buku(List<SumberBuku> list_sumber_buku) {
		this.list_sumber_buku = list_sumber_buku;
	}
	public List<Peminjaman> getList_peminjaman() {
		return list_peminjaman;
	}
	public void setList_peminjaman(List<Peminjaman> list_peminjaman) {
		this.list_peminjaman = list_peminjaman;
	}
	public List<Pengembalian> getList_pengembalian() {
		return list_pengembalian;
	}
	public void setList_pengembalian(List<Pengembalian> list_pengembalian) {
		this.list_pengembalian = list_pengembalian;
	}
	
	
}
