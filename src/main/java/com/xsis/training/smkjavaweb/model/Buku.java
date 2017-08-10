package com.xsis.training.smkjavaweb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_buku")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Buku {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private Integer id_buku;
	@Column(name="buku",unique=true)
	private String kode_buku;
	private String judul_buku;
	@ManyToOne
	private Penulis penulis;
	@OneToMany
	private Category category;\
	@ManyToOne
	private Penerbit penerbit;
	private Integer stock;
	private Integer tahun_terbit;
	private Integer harga_beli;
	private Integer harga_jual;
	
	public Buku() {
		// TODO Auto-generated constructor stub
	}

	public Integer getId_buku() {
		return id_buku;
	}

	public void setId_buku(Integer id_buku) {
		this.id_buku = id_buku;
	}

	public String getKode_buku() {
		return kode_buku;
	}

	public void setKode_buku(String kode_buku) {
		this.kode_buku = kode_buku;
	}

	public String getJudul_buku() {
		return judul_buku;
	}

	public void setJudul_buku(String judul_buku) {
		this.judul_buku = judul_buku;
	}

	public Penulis getPenulis() {
		return penulis;
	}

	public void setPenulis(Penulis penulis) {
		this.penulis = penulis;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Penerbit getPenerbit() {
		return penerbit;
	}

	public void setPenerbit(Penerbit penerbit) {
		this.penerbit = penerbit;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public Integer getTahun_terbit() {
		return tahun_terbit;
	}

	public void setTahun_terbit(Integer tahun_terbit) {
		this.tahun_terbit = tahun_terbit;
	}

	public Integer getHarga_beli() {
		return harga_beli;
	}

	public void setHarga_beli(Integer harga_beli) {
		this.harga_beli = harga_beli;
	}

	public Integer getHarga_jual() {
		return harga_jual;
	}

	public void setHarga_jual(Integer harga_jual) {
		this.harga_jual = harga_jual;
	}

	public Buku(Integer id_buku, String kode_buku, String judul_buku, Penulis penulis, Category category,
			Penerbit penerbit, Integer stock, Integer tahun_terbit, Integer harga_beli, Integer harga_jual) {
		super();
		this.id_buku = id_buku;
		this.kode_buku = kode_buku;
		this.judul_buku = judul_buku;
		this.penulis = penulis;
		this.category = category;
		this.penerbit = penerbit;
		this.stock = stock;
		this.tahun_terbit = tahun_terbit;
		this.harga_beli = harga_beli;
		this.harga_jual = harga_jual;
	}
	
	
}
