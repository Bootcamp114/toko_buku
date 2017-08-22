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
@Table(name = "tbl_transaksi_pembelian")
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class TransaksiPembelian {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int id;
	@Column(name = "no_pembelian",unique=true)
	private String noPembelian;
	private String tanggal;
	private Double totalHarga;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "transaksiPembelian")
	private List<DetaiTransaksi> listDetailTransaksi;

	public TransaksiPembelian() {
		// TODO Auto-generated constructor stub
	}

	public TransaksiPembelian(int id, String noPembelian, String tanggal, Double totalHarga,
			List<DetaiTransaksi> listDetailTransaksi) {
		super();
		this.id = id;
		this.noPembelian = noPembelian;
		this.tanggal = tanggal;
		this.totalHarga = totalHarga;
		this.listDetailTransaksi = listDetailTransaksi;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNoPembelian() {
		return noPembelian;
	}

	public void setNoPembelian(String noPembelian) {
		this.noPembelian = noPembelian;
	}

	public String getTanggal() {
		return tanggal;
	}

	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}

	public Double getTotalHarga() {
		return totalHarga;
	}

	public void setTotalHarga(Double totalHarga) {
		this.totalHarga = totalHarga;
	}

	public List<DetaiTransaksi> getListDetailTransaksi() {
		return listDetailTransaksi;
	}

	public void setListDetailTransaksi(List<DetaiTransaksi> listDetailTransaksi) {
		this.listDetailTransaksi = listDetailTransaksi;
	}

	

}
