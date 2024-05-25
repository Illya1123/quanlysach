/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.Timestamp;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import database.JDBCUtils;
import model.Phieu;
import model.PhieuNhap;
/**
 *
 * @author taki
 */
public class PhieuNhapDAO implements DAOInterface<PhieuNhap> {
    public static PhieuNhapDAO getInstance() {
        return new PhieuNhapDAO();
    }

    @Override
    public int insert(PhieuNhap t) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "INSERT INTO PhieuNhap (maPhieu, thoiGianTao, nguoiTao, tongTien) VALUES (?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, t.getMaPhieu());
            pst.setTimestamp(2, t.getThoiGianTao());
            pst.setString(3, t.getNguoiTao());
            pst.setDouble(4, t.getTongTien());
            ketQua = pst.executeUpdate();
            JDBCUtils.closeConnection(con);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    @Override
    public int update(PhieuNhap t) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "UPDATE PhieuNhap SET maPhieu=?, thoiGianTao=?, nguoiTao=?, tongTien = ? WHERE maPhieu=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, t.getMaPhieu());
            pst.setTimestamp(2, t.getThoiGianTao());
            pst.setString(3, t.getNguoiTao());
            pst.setDouble(4, t.getTongTien());
            pst.setString(5, t.getMaPhieu());
            ketQua = pst.executeUpdate();
            JDBCUtils.closeConnection(con);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    @Override
    public int delete(PhieuNhap t) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "DELETE FROM PhieuNhap WHERE maPhieu=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, t.getMaPhieu());
            ketQua = pst.executeUpdate();
            JDBCUtils.closeConnection(con);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    @Override
    public ArrayList<PhieuNhap> selectAll() {
        ArrayList<PhieuNhap> ketQua = new ArrayList<PhieuNhap>();
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "SELECT * FROM PhieuNhap ORDER BY thoiGianTao DESC";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String maPhieu = rs.getString("maPhieu");
                Timestamp thoiGianTao = rs.getTimestamp("thoiGianTao");
                String nguoiTao = rs.getString("nguoiTao");
                double tongTien = rs.getDouble("tongTien");
                PhieuNhap p = new PhieuNhap(maPhieu, thoiGianTao, nguoiTao, ChiTietPhieuNhapDAO.getInstance().selectAll(maPhieu), tongTien);
                ketQua.add(p);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    @Override
    public PhieuNhap selectById(String t) {
        PhieuNhap ketQua = null;
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "SELECT * FROM PhieuNhap WHERE maPhieu=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, t);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String maPhieu = rs.getString("maPhieu");
                Timestamp thoiGianTao = rs.getTimestamp("thoiGianTao");
                String nguoiTao = rs.getString("nguoiTao");
                double tongTien = rs.getDouble("tongTien");
                ketQua = new PhieuNhap(maPhieu, thoiGianTao, nguoiTao, ChiTietPhieuNhapDAO.getInstance().selectAll(maPhieu), tongTien);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    public ArrayList<Phieu> selectAllAccount(String acc) {
        ArrayList<Phieu> ketQua = new ArrayList<Phieu>();
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "SELECT maPhieu,thoiGianTao,nguoiTao,tongTien FROM PhieuNhap UNION SELECT * FROM PhieuXuat WHERE nguoiTao = ? ORDER BY thoiGianTao DESC";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, acc);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String maPhieu = rs.getString("maPhieu");
                Timestamp thoiGianTao = rs.getTimestamp("thoiGianTao");
                String nguoiTao = rs.getString("nguoiTao");
                double tongTien = rs.getDouble("tongTien");
                Phieu p = new Phieu(maPhieu, thoiGianTao, nguoiTao, ChiTietPhieuNhapDAO.getInstance().selectAll(maPhieu), tongTien);
                ketQua.add(p);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    public ArrayList<Phieu> selectAllP() {
        ArrayList<Phieu> ketQua = new ArrayList<Phieu>();
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "SELECT maPhieu,thoiGianTao,nguoiTao,tongTien FROM PhieuNhap UNION SELECT * FROM PhieuXuat ORDER BY thoiGianTao DESC";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String maPhieu = rs.getString("maPhieu");
                Timestamp thoiGianTao = rs.getTimestamp("thoiGianTao");
                String nguoiTao = rs.getString("nguoiTao");
                double tongTien = rs.getDouble("tongTien");
                Phieu p = new Phieu(maPhieu, thoiGianTao, nguoiTao, ChiTietPhieuNhapDAO.getInstance().selectAll(maPhieu), tongTien);
                ketQua.add(p);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }
}
