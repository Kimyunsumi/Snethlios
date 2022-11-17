/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.snethlios.entity;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class PhieuXuat {

    private int SoPX;
    private Date ngayTao;
    private String lyDoHuy;
    private String trangThai;
    private String hinhThucThanhToan;
    private String maNV;
    private String maKH;

    public PhieuXuat() {
    }

    public PhieuXuat(int SoPX, Date ngayTao, String lyDoHuy, String trangThai, String hinhThucThanhToan, String maNV, String maKH) {
        this.SoPX = SoPX;
        this.ngayTao = ngayTao;
        this.lyDoHuy = lyDoHuy;
        this.trangThai = trangThai;
        this.hinhThucThanhToan = hinhThucThanhToan;
        this.maNV = maNV;
        this.maKH = maKH;
    }

    public int getSoPX() {
        return SoPX;
    }

    public void setSoPX(int SoPX) {
        this.SoPX = SoPX;
    }

    public Date getNgayTao() {
        return ngayTao;
    }

    public void setNgayTao(Date ngayTao) {
        this.ngayTao = ngayTao;
    }

    public String getLyDoHuy() {
        return lyDoHuy;
    }

    public void setLyDoHuy(String lyDoHuy) {
        this.lyDoHuy = lyDoHuy;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public String getHinhThucThanhToan() {
        return hinhThucThanhToan;
    }

    public void setHinhThucThanhToan(String hinhThucThanhToan) {
        this.hinhThucThanhToan = hinhThucThanhToan;
    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }
    
}
