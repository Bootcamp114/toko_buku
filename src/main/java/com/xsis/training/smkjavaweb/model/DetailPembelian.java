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
@Table(name="tbl_detail_pembelian")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class DetailPembelian {
	public DetailPembelian() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@ManyToOne
	private Pembelian pembelian;
	@ManyToOne
	private Buku buku;
	@Column(name="jumlahBeli", nullable = false)
	private int jumlahBeli;
	private int totalHarga;
	public DetailPembelian(int id, Pembelian pembelian, Buku buku, int jumlahBeli, int totalHarga) {
		super();
		this.id = id;
		this.pembelian = pembelian;
		this.buku = buku;
		this.jumlahBeli = jumlahBeli;
		this.totalHarga = totalHarga;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Pembelian getPembelian() {
		return pembelian;
	}
	public void setPembelian(Pembelian pembelian) {
		this.pembelian = pembelian;
	}
	public Buku getBuku() {
		return buku;
	}
	public void setBuku(Buku buku) {
		this.buku = buku;
	}
	public int getJumlahBeli() {
		return jumlahBeli;
	}
	public void setJumlahBeli(int jumlahBeli) {
		this.jumlahBeli = jumlahBeli;
	}
	public int getTotalHarga() {
		return totalHarga;
	}
	public void setTotalHarga(int totalHarga) {
		this.totalHarga = totalHarga;
	}
	
}
