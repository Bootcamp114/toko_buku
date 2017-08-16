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
	@Column(name="no_pengembalian", nullable = false)
	private String noPengembalian;
	private String tanggal;
	@Column(name="total_denda")
	private String totalDenda;
	@ManyToOne
	private Anggota anggota;
	@ManyToOne
	private Karyawan karyawan;
	@ManyToOne
	private Peminjaman peminjaman;
	
	public Pengembalian() {
		// TODO Auto-generated constructor stub
	}

	public Pengembalian(int id, String noPengembalian, String tanggal, String totalDenda, Anggota anggota,
			Karyawan karyawan, Peminjaman peminjaman) {
		super();
		this.id = id;
		this.noPengembalian = noPengembalian;
		this.tanggal = tanggal;
		this.totalDenda = totalDenda;
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

	public String getTotalDenda() {
		return totalDenda;
	}

	public void setTotalDenda(String totalDenda) {
		this.totalDenda = totalDenda;
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
