/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.DuAn1AKAWeb.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author qivub
 */
@Entity
@Table(name="Danhmucsp")
public class Danhmucsp {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public  Long ID;
    public String Tendanhmuc;
    public int Trangthai;

    public Danhmucsp() {
    }

    public Danhmucsp(Long ID, String TenDanhMuc, int TrangThai) {
        this.ID = ID;
        this.Tendanhmuc = TenDanhMuc;
        this.Trangthai = TrangThai;
    }

    public Long getID_Danhmucsanpham() {
        return ID;
    }

    public void setID_Danhmucsanpham(Long ID) {
        this.ID = ID;
    }

    public String getTendanhmuc() {
        return Tendanhmuc;
    }

    public void setTendanhmuc(String Tendanhmuc) {
        this.Tendanhmuc = Tendanhmuc;
    }

    public int getTrangthai() {
        return Trangthai;
    }

    public void setTrangthai(int Trangthai) {
        this.Trangthai = Trangthai;
    }
    
}
