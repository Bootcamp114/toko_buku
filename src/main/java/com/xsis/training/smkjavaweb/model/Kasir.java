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
@Table(name="tbl_kasir")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Kasir {
	public Kasir() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	@Column(name="nik", unique = true)
	private String nik;
	@Column(name="namaKasir", nullable = false)
	private String namaKasir;
	private String jk;
	private String agama;
	private String alamat;
	private String noHp;
	private String status;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="kasir")
	private List<Pembelian> pembelian;
	public Kasir(int id, String nik, String namaKasir, String jk, String agama, String alamat, String noHp,
			String status, List<Pembelian> pembelian) {
		super();
		this.id = id;
		this.nik = nik;
		this.namaKasir = namaKasir;
		this.jk = jk;
		this.agama = agama;
		this.alamat = alamat;
		this.noHp = noHp;
		this.status = status;
		this.pembelian = pembelian;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNik() {
		return nik;
	}
	public void setNik(String nik) {
		this.nik = nik;
	}
	public String getNamaKasir() {
		return namaKasir;
	}
	public void setNamaKasir(String namaKasir) {
		this.namaKasir = namaKasir;
	}
	public String getJk() {
		return jk;
	}
	public void setJk(String jk) {
		this.jk = jk;
	}
	public String getAgama() {
		return agama;
	}
	public void setAgama(String agama) {
		this.agama = agama;
	}
	public String getAlamat() {
		return alamat;
	}
	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}
	public String getNoHp() {
		return noHp;
	}
	public void setNoHp(String noHp) {
		this.noHp = noHp;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public List<Pembelian> getPembelian() {
		return pembelian;
	}
	public void setPembelian(List<Pembelian> pembelian) {
		this.pembelian = pembelian;
	}
}
