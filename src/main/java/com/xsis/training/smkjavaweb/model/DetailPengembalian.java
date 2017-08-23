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
@Table(name="tbl_detail_pengembalian")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class DetailPengembalian {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_pengembalian", nullable = false)
	private String noPengembalian;
	private String tanggal;
	private String denda;
	private String keterangan;
	@ManyToOne
	private Anggota anggota;
	@ManyToOne
	private Karyawan karyawan;
	@ManyToOne
	private DetailPeminjaman detailPeminjaman;
	@ManyToOne
	private Pengembalian pengembalian;
	
	public DetailPengembalian() {
		// TODO Auto-generated constructor stub
	}

	public DetailPengembalian(int id, String noPengembalian, String tanggal, String denda, String keterangan,
			Anggota anggota, Karyawan karyawan, DetailPeminjaman detailPeminjaman, Pengembalian pengembalian) {
		super();
		this.id = id;
		this.noPengembalian = noPengembalian;
		this.tanggal = tanggal;
		this.denda = denda;
		this.keterangan = keterangan;
		this.anggota = anggota;
		this.karyawan = karyawan;
		this.detailPeminjaman = detailPeminjaman;
		this.pengembalian = pengembalian;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNoPengembalian() {
		return noPengembalian;
	}

	public void setNoPengembalian(String noPengembalian) {
		this.noPengembalian = noPengembalian;
	}

	public String getTanggal() {
		return tanggal;
	}

	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}

	public String getDenda() {
		return denda;
	}

	public void setDenda(String denda) {
		this.denda = denda;
	}

	public String getKeterangan() {
		return keterangan;
	}

	public void setKeterangan(String keterangan) {
		this.keterangan = keterangan;
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

	public DetailPeminjaman getDetailPeminjaman() {
		return detailPeminjaman;
	}

	public void setDetailPeminjaman(DetailPeminjaman detailPeminjaman) {
		this.detailPeminjaman = detailPeminjaman;
	}

	public Pengembalian getPengembalian() {
		return pengembalian;
	}

	public void setPengembalian(Pengembalian pengembalian) {
		this.pengembalian = pengembalian;
	}

	

}
