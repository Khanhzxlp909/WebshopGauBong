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
@Table(name="Thuonghieu")
public class Thuonghieu {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long ID;
    public String Tenthuonghieu;
    public String Motathuonghieu;
    public int Trangthai;

    public Thuonghieu() {
    }

    public Thuonghieu(Long ID, String TenThuongHieu, String MoTaThuongHieu, int TrangThai) {
        this.ID = ID;
        this.Tenthuonghieu = TenThuongHieu;
        this.Motathuonghieu = MoTaThuongHieu;
        this.Trangthai = TrangThai;
    }

    public Long getID_ThuongHieu() {
        return ID;
    }

    public void setID_ThuongHieu(Long ID) {
        this.ID = ID;
    }

    public String getTenthuonghieu() {
        return Tenthuonghieu;
    }

    public void setTenthuonghieu(String Tenthuonghieu) {
        this.Tenthuonghieu = Tenthuonghieu;
    }

    public String getMotathuonghieu() {
        return Motathuonghieu;
    }

    public void setMotathuonghieu(String Motathuonghieu) {
        this.Motathuonghieu = Motathuonghieu;
    }

    public int getTrangthai() {
        return Trangthai;
    }

    public void setTrangthai(int Trangthai) {
        this.Trangthai = Trangthai;
    }
    
}
