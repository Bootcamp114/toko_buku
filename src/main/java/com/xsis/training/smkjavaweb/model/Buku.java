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
	@Column(name="kode_buku",unique=true)
	private String kode_buku;
	private String judul_buku;
	private String penulis;
	@ManyToOne
	private Category category;
	private Integer tahun_terbit;
	private String distributor;
	private Double harga_beli;
	private String status;
	private Integer stock;
	
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

	public String getPenulis() {
		return penulis;
	}

	public void setPenulis(String penulis) {
		this.penulis = penulis;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	

	

	public Integer getTahun_terbit() {
		return tahun_terbit;
	}

	public void setTahun_terbit(Integer tahun_terbit) {
		this.tahun_terbit = tahun_terbit;
	}

	public String getDistributor() {
		return distributor;
	}

	public void setDistributor(String distributor) {
		this.distributor = distributor;
	}

	public Double getHarga_beli() {
		return harga_beli;
	}

	public void setHarga_beli(Double harga_beli) {
		this.harga_beli = harga_beli;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getStock() {
		return stock;
	}

	public void setStock(Integer stock) {
		this.stock = stock;
	}

	public Buku(Integer id_buku, String kode_buku, String judul_buku, String penulis, Category category,
		 Integer tahun_terbit, String distributor, Double harga_beli, String status,
			Integer stock) {
		super();
		this.id_buku = id_buku;
		this.kode_buku = kode_buku;
		this.judul_buku = judul_buku;
		this.penulis = penulis;
		this.category = category;
		this.tahun_terbit = tahun_terbit;
		this.distributor = distributor;
		this.harga_beli = harga_beli;
		this.status = status;
		this.stock = stock;
	}
}
