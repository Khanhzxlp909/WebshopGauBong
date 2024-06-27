/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example.DuAn1AKAWeb.model;

import jakarta.persistence.*;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 *
 * @author qivub
 */
@Entity
@Table(name="Mausac")
public class Mausac {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long ID;
    public String Tenmausac;
    public int Trangthai;

    public Mausac() {
    }

    public Mausac(int Long, String TenMauSac, int TrangThai) {
        this.ID = ID;
        this.Tenmausac = TenMauSac;
        this.Trangthai = TrangThai;
    }

    public Long getId() {
        return ID;
    }

    public void setId(Long id) {
        this.ID = id;
    }

    public String getTenmausac() {
        return Tenmausac;
    }

    public void setTenmausac(String Tenmausac) {
        this.Tenmausac = Tenmausac;
    }

    public int getTrangthai() {
        return Trangthai;
    }

    public void setTrangthai(int Trangthai) {
        this.Trangthai = Trangthai;
    }

    
}
