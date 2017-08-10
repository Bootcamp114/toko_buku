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
	private String no_buku;
	private String judul;
	private String edisi;
	private int no_isbn;
	private String penulis;
	private String penerbit;
	private int tahun_terbit;
	private Double harga;
	private String status;
	@OneToMany(fetch = FetchType.LAZY, mappedBy="buku_pinjam")
	private List<SumberBuku> list_sumber_buku;
	
	public BukuPinjam() {
		// TODO Auto-generated constructor stub
	}

	public BukuPinjam(int id, String no_buku, String judul, String edisi, int no_isbn, String penulis, String penerbit,
			int tahun_terbit, Double harga, String status, List<SumberBuku> list_sumber_buku) {
		super();
		this.id = id;
		this.no_buku = no_buku;
		this.judul = judul;
		this.edisi = edisi;
		this.no_isbn = no_isbn;
		this.penulis = penulis;
		this.penerbit = penerbit;
		this.tahun_terbit = tahun_terbit;
		this.harga = harga;
		this.status = status;
		this.list_sumber_buku = list_sumber_buku;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNo_buku() {
		return no_buku;
	}

	public void setNo_buku(String no_buku) {
		this.no_buku = no_buku;
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

	public int getNo_isbn() {
		return no_isbn;
	}

	public void setNo_isbn(int no_isbn) {
		this.no_isbn = no_isbn;
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

	public int getTahun_terbit() {
		return tahun_terbit;
	}

	public void setTahun_terbit(int tahun_terbit) {
		this.tahun_terbit = tahun_terbit;
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

	public List<SumberBuku> getList_sumber_buku() {
		return list_sumber_buku;
	}

	public void setList_sumber_buku(List<SumberBuku> list_sumber_buku) {
		this.list_sumber_buku = list_sumber_buku;
	}

	
}
