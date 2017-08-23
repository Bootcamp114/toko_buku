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
@Table(name="tbl_detail_peminjaman")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class DetailPeminjaman {

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_peminjaman")
	private String noPeminjaman;
	@Column(name="tgl_pinjam")
	private String tglPinjam;
	@Column(name="tgl_kembali")
	private String tglKembali;
	private String status;
	@ManyToOne
	private Anggota anggota;
	@ManyToOne
	private BukuPinjam bukuPinjam;
	@ManyToOne
	private Karyawan karyawan;
	@ManyToOne
	private Peminjaman peminjaman;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="detailPeminjaman")
	private List<DetailPengembalian> listDetailPengembalian;
	
	public DetailPeminjaman() {
		// TODO Auto-generated constructor stub
	}

	public DetailPeminjaman(int id, String noPeminjaman, String tglPinjam, String tglKembali, String status,
			Anggota anggota, BukuPinjam bukuPinjam, Karyawan karyawan, Peminjaman peminjaman,
			List<DetailPengembalian> listDetailPengembalian) {
		super();
		this.id = id;
		this.noPeminjaman = noPeminjaman;
		this.tglPinjam = tglPinjam;
		this.tglKembali = tglKembali;
		this.status = status;
		this.anggota = anggota;
		this.bukuPinjam = bukuPinjam;
		this.karyawan = karyawan;
		this.peminjaman = peminjaman;
		this.listDetailPengembalian = listDetailPengembalian;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNoPeminjaman() {
		return noPeminjaman;
	}

	public void setNoPeminjaman(String noPeminjaman) {
		this.noPeminjaman = noPeminjaman;
	}

	public String getTglPinjam() {
		return tglPinjam;
	}

	public void setTglPinjam(String tglPinjam) {
		this.tglPinjam = tglPinjam;
	}

	public String getTglKembali() {
		return tglKembali;
	}

	public void setTglKembali(String tglKembali) {
		this.tglKembali = tglKembali;
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

	public Peminjaman getPeminjaman() {
		return peminjaman;
	}

	public void setPeminjaman(Peminjaman peminjaman) {
		this.peminjaman = peminjaman;
	}

	public List<DetailPengembalian> getListDetailPengembalian() {
		return listDetailPengembalian;
	}

	public void setListDetailPengembalian(List<DetailPengembalian> listDetailPengembalian) {
		this.listDetailPengembalian = listDetailPengembalian;
	}


}
