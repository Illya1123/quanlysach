/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import database.JDBCUtils;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Sach;

/**
 *
 * @author taki
 */
public class SachDAO implements DAOInterface<Sach> {
    public static SachDAO getInstance() {
        return new SachDAO();
    }

    @Override
    public int insert(Sach sach) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "INSERT INTO Sach (id, image, name, author, publisher, release_date, size, page_count, description, price, category_id, view_count, stock_quantity) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, sach.getId());
            pst.setString(2, sach.getImage());
            pst.setString(3, sach.getName());
            pst.setString(4, sach.getAuthor());
            pst.setString(5, sach.getPublisher());
            pst.setString(6, sach.getReleaseDate());
            pst.setString(7, sach.getSize());
            pst.setInt(8, sach.getPageCount());
            pst.setString(9, sach.getDescription());
            pst.setDouble(10, sach.getPrice());
            pst.setInt(11, sach.getCategoryId());
            pst.setInt(12, sach.getViewCount());
            pst.setInt(13, sach.getStockQuantity());
            ketQua = pst.executeUpdate();
            JDBCUtils.closeConnection(con);
        } catch (SQLException ex) {
            Logger.getLogger(SachDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketQua;
    }

    @Override
    public int update(Sach sach) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "UPDATE Sach SET image=?, name=?, author=?, publisher=?, release_date=?, size=?, page_count=?, description=?, price=?, category_id=?, view_count=?, stock_quantity=? WHERE id=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, sach.getImage());
            pst.setString(2, sach.getName());
            pst.setString(3, sach.getAuthor());
            pst.setString(4, sach.getPublisher());
            pst.setString(5, sach.getReleaseDate());
            pst.setString(6, sach.getSize());
            pst.setInt(7, sach.getPageCount());
            pst.setString(8, sach.getDescription());
            pst.setDouble(9, sach.getPrice());
            pst.setInt(10, sach.getCategoryId());
            pst.setInt(11, sach.getViewCount());
            pst.setInt(12, sach.getStockQuantity());
            pst.setInt(13, sach.getId());
            ketQua = pst.executeUpdate();
            JDBCUtils.closeConnection(con);
        } catch (SQLException ex) {
            Logger.getLogger(SachDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketQua;
    }

    @Override
    public int delete(Sach sach) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "DELETE FROM Sach WHERE id=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, sach.getId());
            ketQua = pst.executeUpdate();
            JDBCUtils.closeConnection(con);
        } catch (SQLException ex) {
            Logger.getLogger(SachDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ketQua;
    }

    @Override
    public ArrayList<Sach> selectAll() {
        ArrayList<Sach> danhSachSach = new ArrayList<>();
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "SELECT * FROM Sach";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                Sach sach = new Sach();
                sach.setId(rs.getInt("id"));
                sach.setImage(rs.getString("image"));
                sach.setName(rs.getString("name"));
                sach.setAuthor(rs.getString("author"));
                sach.setPublisher(rs.getString("publisher"));
                sach.setReleaseDate(rs.getString("release_date"));
                sach.setSize(rs.getString("size"));
                sach.setPageCount(rs.getInt("page_count"));
                sach.setDescription(rs.getString("description"));
                sach.setPrice(rs.getDouble("price"));
                sach.setCategoryId(rs.getInt("category_id"));
                sach.setViewCount(rs.getInt("view_count"));
                sach.setStockQuantity(rs.getInt("stock_quantity"));
                danhSachSach.add(sach);
            }
            JDBCUtils.closeConnection(con);
        } catch (SQLException ex) {
            Logger.getLogger(SachDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return danhSachSach;
    }

    @Override
    public Sach selectById(String id) {
        Sach sach = null;
        try {
            Connection con = JDBCUtils.getConnection();
            String sql = "SELECT * FROM Sach WHERE id=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                sach = new Sach();
                sach.setId(rs.getInt("id"));
                sach.setImage(rs.getString("image"));
                sach.setName(rs.getString("name"));
                sach.setAuthor(rs.getString("author"));
                sach.setPublisher(rs.getString("publisher"));
                sach.setReleaseDate(rs.getString("release_date"));
                sach.setSize(rs.getString("size"));
                sach.setPageCount(rs.getInt("page_count"));
                sach.setDescription(rs.getString("description"));
                sach.setPrice(rs.getDouble("price"));
                sach.setCategoryId(rs.getInt("category_id"));
                sach.setViewCount(rs.getInt("view_count"));
                sach.setStockQuantity(rs.getInt("stock_quantity"));
            }
            JDBCUtils.closeConnection(con);
        } catch (SQLException ex) {
            Logger.getLogger(SachDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sach;
    }
}
