/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.DuAn1AKAWeb.repository;

import com.example.DuAn1AKAWeb.model.Danhmucsp;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author qivub
 */
@Repository
public interface DanhMucSPRepositoty extends JpaRepository<Danhmucsp, Long>{
    
}
