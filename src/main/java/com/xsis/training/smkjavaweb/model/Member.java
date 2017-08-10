package com.xsis.training.smkjavaweb.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@Table(name="tbl_member")
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Member {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	private String pin;
	private String nama_member;
	private String alamat;
	private String no_hp;	
}
