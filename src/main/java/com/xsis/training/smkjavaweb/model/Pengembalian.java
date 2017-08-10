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
@Table(name="tbl_pengembalian")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Pengembalian {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_pengembalian", nullable = false, unique = true)
	private String no_pengembalian;
	@ManyToOne
	private Anggota anggota;
	@ManyToOne
	private Karyawan karyawan;
	@ManyToOne
	private Peminjaman peminjaman;
	
	public Pengembalian() {
		// TODO Auto-generated constructor stub
	}

	public Pengembalian(int id, String no_pengembalian, Anggota anggota, Karyawan karyawan, Peminjaman peminjaman) {
		super();
		this.id = id;
		this.no_pengembalian = no_pengembalian;
		this.anggota = anggota;
		this.karyawan = karyawan;
		this.peminjaman = peminjaman;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNo_pengembalian() {
		return no_pengembalian;
	}

	public void setNo_pengembalian(String no_pengembalian) {
		this.no_pengembalian = no_pengembalian;
	}

	public Anggota getAnggota() {
		return anggota;
	}

	public void setAnggota(Anggota anggota) {
		this.anggota = anggota;
	}

	public Karyawan getKaryawan() {
		return karyawan;
	}

	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}

	public Peminjaman getPeminjaman() {
		return peminjaman;
	}

	public void setPeminjaman(Peminjaman peminjaman) {
		this.peminjaman = peminjaman;
	}
	
	
	
}
