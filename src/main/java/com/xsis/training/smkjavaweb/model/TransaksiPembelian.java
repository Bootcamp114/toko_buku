package com.xsis.training.smkjavaweb.model;

import java.util.List;

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
@Table(name="tbl_transaksi_pembelian")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class TransaksiPembelian {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int noPembelian;
	private String tanggal;
	private Integer totalBukuDibeli;
	private Double totalHarga;
	private Double bayar;
	private Double kembalian;
	@ManyToOne
	private Karyawan karyawan;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="transaksiPembelian")
	private List<Buku>listBuku;
	
	public TransaksiPembelian() {
		// TODO Auto-generated constructor stub
	}

	public TransaksiPembelian(int noPembelian, String tanggal, Integer totalBukuDibeli, Double totalHarga, Double bayar,
			Double kembalian, Karyawan karyawan, List<Buku> listBuku) {
		super();
		this.noPembelian = noPembelian;
		this.tanggal = tanggal;
		this.totalBukuDibeli = totalBukuDibeli;
		this.totalHarga = totalHarga;
		this.bayar = bayar;
		this.kembalian = kembalian;
		this.karyawan = karyawan;
		this.listBuku = listBuku;
	}

	public int getNoPembelian() {
		return noPembelian;
	}

	public void setNoPembelian(int noPembelian) {
		this.noPembelian = noPembelian;
	}

	public String getTanggal() {
		return tanggal;
	}

	public void setTanggal(String tanggal) {
		this.tanggal = tanggal;
	}

	public Integer getTotalBukuDibeli() {
		return totalBukuDibeli;
	}

	public void setTotalBukuDibeli(Integer totalBukuDibeli) {
		this.totalBukuDibeli = totalBukuDibeli;
	}

	public Double getTotalHarga() {
		return totalHarga;
	}

	public void setTotalHarga(Double totalHarga) {
		this.totalHarga = totalHarga;
	}

	public Double getBayar() {
		return bayar;
	}

	public void setBayar(Double bayar) {
		this.bayar = bayar;
	}

	public Double getKembalian() {
		return kembalian;
	}

	public void setKembalian(Double kembalian) {
		this.kembalian = kembalian;
	}

	public Karyawan getKaryawan() {
		return karyawan;
	}

	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}

	public List<Buku> getListBuku() {
		return listBuku;
	}

	public void setListBuku(List<Buku> listBuku) {
		this.listBuku = listBuku;
	}

	
}
