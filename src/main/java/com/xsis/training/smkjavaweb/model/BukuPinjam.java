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
@Table(name="tbl_buku_pinjam")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class BukuPinjam {

	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="no_buku",nullable = false, unique = true)
	private String noBuku;
	private String judul;
	private String edisi;
	@Column(name="no_isbn")
	private int noIsbn;
	private String penulis;
	private String penerbit;
	@Column(name="tahun_terbit")
	private int tahunTerbit;
	private Double harga;
	private String status;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="bukuPinjam")
	private List<SumberBuku> listSumberBuku;
	
	public BukuPinjam() {
		// TODO Auto-generated constructor stub
	}

	public BukuPinjam(int id, String noBuku, String judul, String edisi, int noIsbn, String penulis, String penerbit,
			int tahunTerbit, Double harga, String status, List<SumberBuku> listSumberBuku) {
		super();
		this.id = id;
		this.noBuku = noBuku;
		this.judul = judul;
		this.edisi = edisi;
		this.noIsbn = noIsbn;
		this.penulis = penulis;
		this.penerbit = penerbit;
		this.tahunTerbit = tahunTerbit;
		this.harga = harga;
		this.status = status;
		this.listSumberBuku = listSumberBuku;
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

	public String getJudul() {
		return judul;
	}

	public void setJudul(String judul) {
		this.judul = judul;
	}

	public String getEdisi() {
		return edisi;
	}

	public void setEdisi(String edisi) {
		this.edisi = edisi;
	}

	public int getNoIsbn() {
		return noIsbn;
	}

	public void setNoIsbn(int noIsbn) {
		this.noIsbn = noIsbn;
	}

	public String getPenulis() {
		return penulis;
	}

	public void setPenulis(String penulis) {
		this.penulis = penulis;
	}

	public String getPenerbit() {
		return penerbit;
	}

	public void setPenerbit(String penerbit) {
		this.penerbit = penerbit;
	}

	public int getTahunTerbit() {
		return tahunTerbit;
	}

	public void setTahunTerbit(int tahunTerbit) {
		this.tahunTerbit = tahunTerbit;
	}

	public Double getHarga() {
		return harga;
	}

	public void setHarga(Double harga) {
		this.harga = harga;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public List<SumberBuku> getListSumberBuku() {
		return listSumberBuku;
	}

	public void setListSumberBuku(List<SumberBuku> listSumberBuku) {
		this.listSumberBuku = listSumberBuku;
	}

}
