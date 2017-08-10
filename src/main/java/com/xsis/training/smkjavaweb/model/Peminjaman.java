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
@Table(name="tbl_peminjaman")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Peminjaman {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_peminjaman", nullable = false, unique = true)
	private String no_peminjaman;
	private String tgl_pinjam;
	private String tgl_kembali;
	private String status;
	@ManyToOne
	private Anggota anggota;
	@ManyToOne
	private BukuPinjam buku_pinjam;
	@ManyToOne
	private Karyawan karyawan;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="peminjaman")
	private List<Pengembalian> list_pengembalian;
	
	public Peminjaman() {
		// TODO Auto-generated constructor stub
	}

	public Peminjaman(int id, String no_peminjaman, String tgl_pinjam, String tgl_kembali, String status,
			Anggota anggota, BukuPinjam buku_pinjam, Karyawan karyawan, List<Pengembalian> list_pengembalian) {
		super();
		this.id = id;
		this.no_peminjaman = no_peminjaman;
		this.tgl_pinjam = tgl_pinjam;
		this.tgl_kembali = tgl_kembali;
		this.status = status;
		this.anggota = anggota;
		this.buku_pinjam = buku_pinjam;
		this.karyawan = karyawan;
		this.list_pengembalian = list_pengembalian;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNo_peminjaman() {
		return no_peminjaman;
	}

	public void setNo_peminjaman(String no_peminjaman) {
		this.no_peminjaman = no_peminjaman;
	}

	public String getTgl_pinjam() {
		return tgl_pinjam;
	}

	public void setTgl_pinjam(String tgl_pinjam) {
		this.tgl_pinjam = tgl_pinjam;
	}

	public String getTgl_kembali() {
		return tgl_kembali;
	}

	public void setTgl_kembali(String tgl_kembali) {
		this.tgl_kembali = tgl_kembali;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Anggota getAnggota() {
		return anggota;
	}

	public void setAnggota(Anggota anggota) {
		this.anggota = anggota;
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

	public List<Pengembalian> getList_pengembalian() {
		return list_pengembalian;
	}

	public void setList_pengembalian(List<Pengembalian> list_pengembalian) {
		this.list_pengembalian = list_pengembalian;
	}
	
	
}
