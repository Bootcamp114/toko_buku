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
	private String noSumberBuku;
	private String tanggal;
	@ManyToOne
	private Donatur donatur;
	@ManyToOne
	private BukuPinjam bukuPinjam;
	@ManyToOne
	private Karyawan karyawan;
	public SumberBuku() {
		// TODO Auto-generated constructor stub
	}

	public SumberBuku(int id, String noSumberBuku, String tanggal, Donatur donatur, BukuPinjam bukuPinjam,
			Karyawan karyawan) {
		super();
		this.id = id;
		this.noSumberBuku = noSumberBuku;
		this.tanggal = tanggal;
		this.donatur = donatur;
		this.bukuPinjam = bukuPinjam;
		this.karyawan = karyawan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNoSumberBuku() {
		return noSumberBuku;
	}

	public void setNoSumberBuku(String noSumberBuku) {
		this.noSumberBuku = noSumberBuku;
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

	public BukuPinjam getBukuPinjam() {
		return bukuPinjam;
	}

	public void setBukuPinjam(BukuPinjam bukuPinjam) {
		this.bukuPinjam = bukuPinjam;
	}

	public Karyawan getKaryawan() {
		return karyawan;
	}

	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}

	
}
