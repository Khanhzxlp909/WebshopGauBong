/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.example.DuAn1AKAWeb.repository;

import com.example.DuAn1AKAWeb.model.Chitietsanpham;
//import com.example.DuAn1AKAWeb.viewmodel.vw_viewsanpham;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductDetailRepository extends JpaRepository<Chitietsanpham, Integer> {
    
    @Query("SELECT p FROM Chitietsanpham p")
    @EntityGraph(attributePaths = {"chatlieu", "trongluong", "size", "danhmucsp", "mausac", "thuonghieu"})
    Page<Chitietsanpham> findAllProductDetail(Pageable pageabl);

}
