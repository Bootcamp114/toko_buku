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
@Table(name = "tbl_buku")
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class Buku {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Integer id_buku;
	@Column(name = "kode_buku", unique = true)
	private String kodeBuku;
	private String judulBuku;
	private String penulis;
	@ManyToOne
	private Kategori kategori;
	@ManyToOne
	private Penerbit penerbit;
	private Integer tahunTerbit;
	@ManyToOne
	private Distributor distributor;
	private Double hargaBuku;
	private String status;
	private Integer stock;
	@ManyToOne
	private TransaksiPembelian transaksiPembelian;

	public Buku() {
		// TODO Auto-generated constructor stub
	}

	public Buku(Integer id_buku, String kodeBuku, String judulBuku, String penulis, Kategori kategori,
			Penerbit penerbit, Integer tahunTerbit, Distributor distributor, Double hargaBuku, String status,
			Integer stock, TransaksiPembelian transaksiPembelian) {
		super();
		this.id_buku = id_buku;
		this.kodeBuku = kodeBuku;
		this.judulBuku = judulBuku;
		this.penulis = penulis;
		this.kategori = kategori;
		this.penerbit = penerbit;
		this.tahunTerbit = tahunTerbit;
		this.distributor = distributor;
		this.hargaBuku = hargaBuku;
		this.status = status;
		this.stock = stock;
		this.transaksiPembelian = transaksiPembelian;
	}

	public Integer getId_buku() {
		return id_buku;
	}

	public void setId_buku(Integer id_buku) {
		this.id_buku = id_buku;
	}

	public String getKodeBuku() {
		return kodeBuku;
	}

	public void setKodeBuku(String kodeBuku) {
		this.kodeBuku = kodeBuku;
	}

	public String getJudulBuku() {
		return judulBuku;
	}

	public void setJudulBuku(String judulBuku) {
		this.judulBuku = judulBuku;
	}

	public String getPenulis() {
		return penulis;
	}

	public void setPenulis(String penulis) {
		this.penulis = penulis;
	}

	public Kategori getKategori() {
		return kategori;
	}

	public void setKategori(Kategori kategori) {
		this.kategori = kategori;
	}

	public Penerbit getPenerbit() {
		return penerbit;
	}

	public void setPenerbit(Penerbit penerbit) {
		this.penerbit = penerbit;
	}

	public Integer getTahunTerbit() {
		return tahunTerbit;
	}

	public void setTahunTerbit(Integer tahunTerbit) {
		this.tahunTerbit = tahunTerbit;
	}

	public Distributor getDistributor() {
		return distributor;
	}

	public void setDistributor(Distributor distributor) {
		this.distributor = distributor;
	}

	public Double getHargaBuku() {
		return hargaBuku;
	}

	public void setHargaBuku(Double hargaBuku) {
		this.hargaBuku = hargaBuku;
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

	public TransaksiPembelian getTransaksiPembelian() {
		return transaksiPembelian;
	}

	public void setTransaksiPembelian(TransaksiPembelian transaksiPembelian) {
		this.transaksiPembelian = transaksiPembelian;
	}

	
}
