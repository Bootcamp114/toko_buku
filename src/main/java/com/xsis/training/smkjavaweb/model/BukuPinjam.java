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
@Table(name="tbl_buku_pinjam")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class BukuPinjam {

	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_buku", nullable = false, unique = true)
	private String noBuku;
	private String tanggal;
	private String status;
	@ManyToOne
	private Buku buku;
	@ManyToOne
	private Donatur donatur;
	@ManyToOne
	private Karyawan karyawan;
	public BukuPinjam() {
		// TODO Auto-generated constructor stub
	}
	public BukuPinjam(int id, String noBuku, String tanggal, String status, Buku buku, Donatur donatur,
			Karyawan karyawan) {
		super();
		this.id = id;
		this.noBuku = noBuku;
		this.tanggal = tanggal;
		this.status = status;
		this.buku = buku;
		this.donatur = donatur;
		this.karyawan = karyawan;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNoBuku() {
		return noBuku;
	}
	public void setNoBuku(String noBuku) {
		this.noBuku = noBuku;
	}
	public String getTanggal() {
		return tanggal;
	}
	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Buku getBuku() {
		return buku;
	}
	public void setBuku(Buku buku) {
		this.buku = buku;
	}
	public Donatur getDonatur() {
		return donatur;
	}
	public void setDonatur(Donatur donatur) {
		this.donatur = donatur;
	}
	public Karyawan getKaryawan() {
		return karyawan;
	}
	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}

}
