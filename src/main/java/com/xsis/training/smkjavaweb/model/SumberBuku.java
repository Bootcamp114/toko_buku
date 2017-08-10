package com.xsis.training.smkjavaweb.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_sumber_buku")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class SumberBuku {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_sumber_buku", nullable = false, unique = true)
	private String no_sumber_buku;
	private String tanggal;
	@ManyToOne
	private Donatur donatur;
	@ManyToOne
	private BukuPinjam buku_pinjam;
	@ManyToOne
	private Karyawan karyawan;
	
	public SumberBuku() {
		// TODO Auto-generated constructor stub
	}

	public SumberBuku(int id, String no_sumber_buku, String tanggal, Donatur donatur, BukuPinjam buku_pinjam,
			Karyawan karyawan) {
		super();
		this.id = id;
		this.no_sumber_buku = no_sumber_buku;
		this.tanggal = tanggal;
		this.donatur = donatur;
		this.buku_pinjam = buku_pinjam;
		this.karyawan = karyawan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNo_sumber_buku() {
		return no_sumber_buku;
	}

	public void setNo_sumber_buku(String no_sumber_buku) {
		this.no_sumber_buku = no_sumber_buku;
	}

	public String getTanggal() {
		return tanggal;
	}

	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}

	public Donatur getDonatur() {
		return donatur;
	}

	public void setDonatur(Donatur donatur) {
		this.donatur = donatur;
	}

	public BukuPinjam getBuku_pinjam() {
		return buku_pinjam;
	}

	public void setBuku_pinjam(BukuPinjam buku_pinjam) {
		this.buku_pinjam = buku_pinjam;
	}

	public Karyawan getKaryawan() {
		return karyawan;
	}

	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}

	
}
