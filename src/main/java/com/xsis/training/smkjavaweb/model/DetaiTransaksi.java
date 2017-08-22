package com.xsis.training.smkjavaweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_detail_transaksi")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class DetaiTransaksi {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	private String judulBuku;
	private Double harga;
	private Double jmlBeli;
	private Double total;
	@ManyToOne
	private TransaksiPembelian transaksiPembelian;
	
	public DetaiTransaksi() {
		// TODO Auto-generated constructor stub
	}

	public DetaiTransaksi(int id, String judulBuku, Double harga, Double jmlBeli, Double total,
			TransaksiPembelian transaksiPembelian) {
		super();
		this.id = id;
		this.judulBuku = judulBuku;
		this.harga = harga;
		this.jmlBeli = jmlBeli;
		this.total = total;
		this.transaksiPembelian = transaksiPembelian;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJudulBuku() {
		return judulBuku;
	}

	public void setJudulBuku(String judulBuku) {
		this.judulBuku = judulBuku;
	}

	public Double getHarga() {
		return harga;
	}

	public void setHarga(Double harga) {
		this.harga = harga;
	}

	public Double getJmlBeli() {
		return jmlBeli;
	}

	public void setJmlBeli(Double jmlBeli) {
		this.jmlBeli = jmlBeli;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public TransaksiPembelian getTransaksiPembelian() {
		return transaksiPembelian;
	}

	public void setTransaksiPembelian(TransaksiPembelian transaksiPembelian) {
		this.transaksiPembelian = transaksiPembelian;
	}

	
}
