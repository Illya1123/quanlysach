/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package view;

import com.formdev.flatlaf.FlatLightLaf;
import java.awt.Color;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import model.Account;

/**
 *
 * @author taki
 */
public class Admin extends javax.swing.JFrame {

    /**
     * Creates new form Admin
     */
    Color DefaultColor, ClickedColor;
    private Account currentAcc;
    
    private Admin() {
        initComponents();
    }
    
    public Account getCurrentAcc() {
        return currentAcc;
    }
    
    public Admin(Account t) throws UnsupportedLookAndFeelException {
        ImageIcon logo = new ImageIcon(getClass().getResource("/icon/logo.png"));
        setIconImage(logo.getImage());
        UIManager.setLookAndFeel(new FlatLightLaf());
        UIManager.put("Table.showVerticalLines", true);
        UIManager.put("Table.showHorizontalLines", true);
        initComponents();
        setLocationRelativeTo(null);
        this.currentAcc = t;
        ProductForm pf = new ProductForm();
        MainContent.add(pf).setVisible(true);
//        pf.checkRole(currentAcc);
        DefaultColor = new Color(89, 168, 105);
        ClickedColor = new Color(26, 188, 156);
        NavbarMenu.setBackground(DefaultColor);
        SanPham.setBackground(ClickedColor);
        PhieuNhap.setBackground(DefaultColor);
        NhapHang.setBackground(DefaultColor);
        XuatHang.setBackground(DefaultColor);
        PhieuXuat.setBackground(DefaultColor);
        TonKho.setBackground(DefaultColor);
        TaiKhoan1.setBackground(DefaultColor);
        ThongKe.setBackground(DefaultColor);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        NavbarMenu = new javax.swing.JPanel();
        SanPham = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        NhapHang = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        PhieuNhap = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        XuatHang = new javax.swing.JPanel();
        jLabel4 = new javax.swing.JLabel();
        DangXuat = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        NameUser = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        PhieuXuat = new javax.swing.JPanel();
        jLabel9 = new javax.swing.JLabel();
        TonKho = new javax.swing.JPanel();
        jLabel10 = new javax.swing.JLabel();
        TaiKhoan1 = new javax.swing.JPanel();
        jLabel12 = new javax.swing.JLabel();
        ThongKe = new javax.swing.JPanel();
        Account = new javax.swing.JPanel();
        jLabel14 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        MainContent = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        NavbarMenu.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        NavbarMenu.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        SanPham.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        SanPham.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        SanPham.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                SanPhamMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                SanPhamMousePressed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8_product_25px_2.png"))); // NOI18N
        jLabel1.setText("SẢN PHẨM");

        javax.swing.GroupLayout SanPhamLayout = new javax.swing.GroupLayout(SanPham);
        SanPham.setLayout(SanPhamLayout);
        SanPhamLayout.setHorizontalGroup(
            SanPhamLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(SanPhamLayout.createSequentialGroup()
                .addGap(34, 34, 34)
                .addComponent(jLabel1)
                .addContainerGap(68, Short.MAX_VALUE))
        );
        SanPhamLayout.setVerticalGroup(
            SanPhamLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, SanPhamLayout.createSequentialGroup()
                .addContainerGap(9, Short.MAX_VALUE)
                .addComponent(jLabel1)
                .addContainerGap())
        );

        NavbarMenu.add(SanPham, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 170, 240, 40));

        NhapHang.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        NhapHang.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        NhapHang.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                NhapHangMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                NhapHangMousePressed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 255));
        jLabel2.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8_import_25px.png"))); // NOI18N
        jLabel2.setText("NHẬP HÀNG");

        javax.swing.GroupLayout NhapHangLayout = new javax.swing.GroupLayout(NhapHang);
        NhapHang.setLayout(NhapHangLayout);
        NhapHangLayout.setHorizontalGroup(
            NhapHangLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(NhapHangLayout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addComponent(jLabel2)
                .addContainerGap(58, Short.MAX_VALUE))
        );
        NhapHangLayout.setVerticalGroup(
            NhapHangLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(NhapHangLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        NavbarMenu.add(NhapHang, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 250, 240, -1));

        PhieuNhap.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        PhieuNhap.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        PhieuNhap.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                PhieuNhapMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                PhieuNhapMousePressed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(255, 255, 255));
        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8_add_file_25px_2.png"))); // NOI18N
        jLabel3.setText("PHIẾU NHẬP");

        javax.swing.GroupLayout PhieuNhapLayout = new javax.swing.GroupLayout(PhieuNhap);
        PhieuNhap.setLayout(PhieuNhapLayout);
        PhieuNhapLayout.setHorizontalGroup(
            PhieuNhapLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PhieuNhapLayout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jLabel3)
                .addContainerGap(53, Short.MAX_VALUE))
        );
        PhieuNhapLayout.setVerticalGroup(
            PhieuNhapLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, PhieuNhapLayout.createSequentialGroup()
                .addContainerGap(9, Short.MAX_VALUE)
                .addComponent(jLabel3)
                .addContainerGap())
        );

        NavbarMenu.add(PhieuNhap, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 290, 240, 40));

        XuatHang.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        XuatHang.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        XuatHang.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                XuatHangMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                XuatHangMousePressed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(255, 255, 255));
        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8_export_25px.png"))); // NOI18N
        jLabel4.setText("XUẤT HÀNG");

        javax.swing.GroupLayout XuatHangLayout = new javax.swing.GroupLayout(XuatHang);
        XuatHang.setLayout(XuatHangLayout);
        XuatHangLayout.setHorizontalGroup(
            XuatHangLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(XuatHangLayout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addComponent(jLabel4)
                .addContainerGap(60, Short.MAX_VALUE))
        );
        XuatHangLayout.setVerticalGroup(
            XuatHangLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, XuatHangLayout.createSequentialGroup()
                .addContainerGap(9, Short.MAX_VALUE)
                .addComponent(jLabel4)
                .addContainerGap())
        );

        NavbarMenu.add(XuatHang, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 330, 240, 40));

        DangXuat.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        DangXuat.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                DangXuatMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                DangXuatMousePressed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(255, 255, 255));
        jLabel5.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8_shutdown_25px.png"))); // NOI18N
        jLabel5.setText("ĐĂNG XUẤT");

        javax.swing.GroupLayout DangXuatLayout = new javax.swing.GroupLayout(DangXuat);
        DangXuat.setLayout(DangXuatLayout);
        DangXuatLayout.setHorizontalGroup(
            DangXuatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(DangXuatLayout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addComponent(jLabel5)
                .addContainerGap(61, Short.MAX_VALUE))
        );
        DangXuatLayout.setVerticalGroup(
            DangXuatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(DangXuatLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel5)
                .addContainerGap(9, Short.MAX_VALUE))
        );

        NavbarMenu.add(DangXuat, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 690, 240, -1));

        NameUser.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        NameUser.setForeground(new java.awt.Color(255, 255, 255));
        NameUser.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        NameUser.setText("ADMIN");
        NameUser.setToolTipText("");
        NavbarMenu.add(NameUser, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 100, 160, -1));

        jLabel8.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 255, 255));
        jLabel8.setText("HI !");
        NavbarMenu.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 70, 40, -1));

        PhieuXuat.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        PhieuXuat.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        PhieuXuat.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                PhieuXuatMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                PhieuXuatMousePressed(evt);
            }
        });

        jLabel9.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel9.setForeground(new java.awt.Color(255, 255, 255));
        jLabel9.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8_database_daily_export_25px.png"))); // NOI18N
        jLabel9.setText("PHIẾU XUẤT");

        javax.swing.GroupLayout PhieuXuatLayout = new javax.swing.GroupLayout(PhieuXuat);
        PhieuXuat.setLayout(PhieuXuatLayout);
        PhieuXuatLayout.setHorizontalGroup(
            PhieuXuatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PhieuXuatLayout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addComponent(jLabel9)
                .addContainerGap(56, Short.MAX_VALUE))
        );
        PhieuXuatLayout.setVerticalGroup(
            PhieuXuatLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PhieuXuatLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel9)
                .addContainerGap(9, Short.MAX_VALUE))
        );

        NavbarMenu.add(PhieuXuat, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 370, 240, 40));

        TonKho.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        TonKho.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        TonKho.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                TonKhoMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                TonKhoMousePressed(evt);
            }
        });

        jLabel10.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel10.setForeground(new java.awt.Color(255, 255, 255));
        jLabel10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8-warehouse-25.png"))); // NOI18N
        jLabel10.setText("TỒN KHO");

        javax.swing.GroupLayout TonKhoLayout = new javax.swing.GroupLayout(TonKho);
        TonKho.setLayout(TonKhoLayout);
        TonKhoLayout.setHorizontalGroup(
            TonKhoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TonKhoLayout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(60, Short.MAX_VALUE))
        );
        TonKhoLayout.setVerticalGroup(
            TonKhoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TonKhoLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel10)
                .addContainerGap(9, Short.MAX_VALUE))
        );

        NavbarMenu.add(TonKho, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 410, 240, -1));

        TaiKhoan1.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        TaiKhoan1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        TaiKhoan1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                TaiKhoan1MouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                TaiKhoan1MousePressed(evt);
            }
        });

        jLabel12.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel12.setForeground(new java.awt.Color(255, 255, 255));
        jLabel12.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8_test_account_25px.png"))); // NOI18N
        jLabel12.setText("TÀI KHOẢN");

        javax.swing.GroupLayout TaiKhoan1Layout = new javax.swing.GroupLayout(TaiKhoan1);
        TaiKhoan1.setLayout(TaiKhoan1Layout);
        TaiKhoan1Layout.setHorizontalGroup(
            TaiKhoan1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TaiKhoan1Layout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jLabel12)
                .addContainerGap(68, Short.MAX_VALUE))
        );
        TaiKhoan1Layout.setVerticalGroup(
            TaiKhoan1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(TaiKhoan1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel12)
                .addContainerGap(9, Short.MAX_VALUE))
        );

        NavbarMenu.add(TaiKhoan1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 450, 240, -1));

        ThongKe.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        ThongKe.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        ThongKe.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                ThongKeMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                ThongKeMousePressed(evt);
            }
        });

        javax.swing.GroupLayout ThongKeLayout = new javax.swing.GroupLayout(ThongKe);
        ThongKe.setLayout(ThongKeLayout);
        ThongKeLayout.setHorizontalGroup(
            ThongKeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 240, Short.MAX_VALUE)
        );
        ThongKeLayout.setVerticalGroup(
            ThongKeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 40, Short.MAX_VALUE)
        );

        NavbarMenu.add(ThongKe, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 490, 240, -1));

        Account.setBackground(javax.swing.UIManager.getDefaults().getColor("Actions.Green"));
        Account.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        Account.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                AccountMouseClicked(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                AccountMousePressed(evt);
            }
        });

        jLabel14.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(255, 255, 255));
        jLabel14.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/icons8-information-25.png"))); // NOI18N
        jLabel14.setText("ĐỔI THÔNG TIN");

        javax.swing.GroupLayout AccountLayout = new javax.swing.GroupLayout(Account);
        Account.setLayout(AccountLayout);
        AccountLayout.setHorizontalGroup(
            AccountLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(AccountLayout.createSequentialGroup()
                .addGap(30, 30, 30)
                .addComponent(jLabel14, javax.swing.GroupLayout.PREFERRED_SIZE, 176, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(34, Short.MAX_VALUE))
        );
        AccountLayout.setVerticalGroup(
            AccountLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(AccountLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel14)
                .addContainerGap(9, Short.MAX_VALUE))
        );

        NavbarMenu.add(Account, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 640, 240, -1));

        jLabel13.setFont(new java.awt.Font("SF Pro Display", 1, 18)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(255, 255, 255));
        jLabel13.setIcon(new javax.swing.ImageIcon(getClass().getResource("/icon/statisticals.png"))); // NOI18N
        jLabel13.setText("THỐNG KÊ");
        NavbarMenu.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 220, -1, -1));

        MainContent.setBackground(new java.awt.Color(255, 255, 255));

        javax.swing.GroupLayout MainContentLayout = new javax.swing.GroupLayout(MainContent);
        MainContent.setLayout(MainContentLayout);
        MainContentLayout.setHorizontalGroup(
            MainContentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 1180, Short.MAX_VALUE)
        );
        MainContentLayout.setVerticalGroup(
            MainContentLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 750, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(NavbarMenu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(MainContent, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(NavbarMenu, javax.swing.GroupLayout.PREFERRED_SIZE, 750, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(MainContent, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 12, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void SanPhamMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_SanPhamMouseClicked
        // TODO add your handling code here:
        ProductForm ac = new ProductForm();
        MainContent.removeAll();
        MainContent.add(ac).setVisible(true);
    }//GEN-LAST:event_SanPhamMouseClicked

    private void SanPhamMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_SanPhamMousePressed
        // TODO add your handling code here:
        SanPham.setBackground(ClickedColor);
        PhieuNhap.setBackground(DefaultColor);
        NhapHang.setBackground(DefaultColor);
        XuatHang.setBackground(DefaultColor);
        PhieuXuat.setBackground(DefaultColor);
        TonKho.setBackground(DefaultColor);
        TaiKhoan1.setBackground(DefaultColor);
        ThongKe.setBackground(DefaultColor);
        MainContent.removeAll();
        ProductForm p = new ProductForm();
        MainContent.add(p).setVisible(true);
    }//GEN-LAST:event_SanPhamMousePressed

    private void NhapHangMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_NhapHangMouseClicked
        // TODO add your handling code here:
        NhapHangForm nhaphang = new NhapHangForm();
        nhaphang.setNguoiNhapHang(this.currentAcc.getUser());
        MainContent.removeAll();
        MainContent.add(nhaphang).setVisible(true);
    }//GEN-LAST:event_NhapHangMouseClicked

    private void NhapHangMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_NhapHangMousePressed
        // TODO add your handling code here:
        SanPham.setBackground(DefaultColor);
        PhieuNhap.setBackground(DefaultColor);
        NhapHang.setBackground(ClickedColor);
        XuatHang.setBackground(DefaultColor);
        PhieuXuat.setBackground(DefaultColor);
        TonKho.setBackground(DefaultColor);
        TaiKhoan1.setBackground(DefaultColor);
        ThongKe.setBackground(DefaultColor);
    }//GEN-LAST:event_NhapHangMousePressed

    private void PhieuNhapMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_PhieuNhapMouseClicked
        // TODO add your handling code here:
        PhieuNhapForm pn = new PhieuNhapForm(this.getCurrentAcc());
        MainContent.removeAll();
        MainContent.add(pn).setVisible(true);
    }//GEN-LAST:event_PhieuNhapMouseClicked

    private void PhieuNhapMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_PhieuNhapMousePressed
        // TODO add your handling code here:
        SanPham.setBackground(DefaultColor);
        PhieuNhap.setBackground(ClickedColor);
        NhapHang.setBackground(DefaultColor);
        XuatHang.setBackground(DefaultColor);
        PhieuXuat.setBackground(DefaultColor);
        TonKho.setBackground(DefaultColor);
        TaiKhoan1.setBackground(DefaultColor);
        ThongKe.setBackground(DefaultColor);
    }//GEN-LAST:event_PhieuNhapMousePressed

    private void XuatHangMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_XuatHangMouseClicked
        // TODO add your handling code here:
        XuatHangForm xh = new XuatHangForm();
        xh.setNguoiTao(this.currentAcc.getFullName());
        MainContent.removeAll();
        MainContent.add(xh).setVisible(true);
    }//GEN-LAST:event_XuatHangMouseClicked

    private void XuatHangMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_XuatHangMousePressed
        // TODO add your handling code here:
        SanPham.setBackground(DefaultColor);
        PhieuNhap.setBackground(DefaultColor);
        NhapHang.setBackground(DefaultColor);
        XuatHang.setBackground(ClickedColor);
        PhieuXuat.setBackground(DefaultColor);
        TonKho.setBackground(DefaultColor);
        TaiKhoan1.setBackground(DefaultColor);
        ThongKe.setBackground(DefaultColor);
    }//GEN-LAST:event_XuatHangMousePressed

    private void DangXuatMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_DangXuatMouseClicked
        // TODO add your handling code here:
        int relly = JOptionPane.showConfirmDialog(
            null,
            "Bạn muốn thoát khỏi chương trình ?",
            "Xác nhận",
            JOptionPane.YES_NO_OPTION);
        if (relly == JOptionPane.YES_OPTION) {
            this.dispose();
            Login a = new Login();
            a.setVisible(true);
        } else {
            DangXuat.setBackground(DefaultColor);
        }
    }//GEN-LAST:event_DangXuatMouseClicked

    private void DangXuatMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_DangXuatMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_DangXuatMousePressed

    private void PhieuXuatMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_PhieuXuatMouseClicked
        // TODO add your handling code here:
        PhieuXuatForm px = new PhieuXuatForm(this.getCurrentAcc());
        MainContent.removeAll();
        MainContent.add(px).setVisible(true);
    }//GEN-LAST:event_PhieuXuatMouseClicked

    private void PhieuXuatMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_PhieuXuatMousePressed
        // TODO add your handling code here:
        SanPham.setBackground(DefaultColor);
        PhieuNhap.setBackground(DefaultColor);
        NhapHang.setBackground(DefaultColor);
        XuatHang.setBackground(DefaultColor);
        PhieuXuat.setBackground(ClickedColor);
        TonKho.setBackground(DefaultColor);
        TaiKhoan1.setBackground(DefaultColor);
        ThongKe.setBackground(DefaultColor);
    }//GEN-LAST:event_PhieuXuatMousePressed

    private void TonKhoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TonKhoMouseClicked
        // TODO add your handling code here:
        TonKhoForm px = new TonKhoForm();
        MainContent.removeAll();
        MainContent.add(px).setVisible(true);
    }//GEN-LAST:event_TonKhoMouseClicked

    private void TonKhoMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TonKhoMousePressed
        // TODO add your handling code here:
        SanPham.setBackground(DefaultColor);
        PhieuNhap.setBackground(DefaultColor);
        NhapHang.setBackground(DefaultColor);
        XuatHang.setBackground(DefaultColor);
        PhieuXuat.setBackground(DefaultColor);
        TonKho.setBackground(ClickedColor);
        TaiKhoan1.setBackground(DefaultColor);
        ThongKe.setBackground(DefaultColor);
    }//GEN-LAST:event_TonKhoMousePressed

    private void TaiKhoan1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TaiKhoan1MouseClicked
        // TODO add your handling code here:
        AccountForm ac = new AccountForm();
        MainContent.removeAll();
        MainContent.add(ac).setVisible(true);
    }//GEN-LAST:event_TaiKhoan1MouseClicked

    private void TaiKhoan1MousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TaiKhoan1MousePressed
        // TODO add your handling code here:
        SanPham.setBackground(DefaultColor);
        PhieuNhap.setBackground(DefaultColor);
        NhapHang.setBackground(DefaultColor);
        XuatHang.setBackground(DefaultColor);
        PhieuXuat.setBackground(DefaultColor);
        TonKho.setBackground(DefaultColor);
        TaiKhoan1.setBackground(ClickedColor);
        ThongKe.setBackground(DefaultColor);
    }//GEN-LAST:event_TaiKhoan1MousePressed

    private void ThongKeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ThongKeMouseClicked
        // TODO add your handling code here:
        ThongKeForm tk = new ThongKeForm();
        MainContent.removeAll();
        MainContent.add(tk).setVisible(true);
    }//GEN-LAST:event_ThongKeMouseClicked

    private void ThongKeMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_ThongKeMousePressed
        // TODO add your handling code here:
        ThongKe.setBackground(ClickedColor);
        SanPham.setBackground(DefaultColor);
        PhieuNhap.setBackground(DefaultColor);
        NhapHang.setBackground(DefaultColor);
        XuatHang.setBackground(DefaultColor);
        PhieuXuat.setBackground(DefaultColor);
        TonKho.setBackground(DefaultColor);
        TaiKhoan1.setBackground(DefaultColor);
    }//GEN-LAST:event_ThongKeMousePressed

    private void AccountMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_AccountMouseClicked
        // TODO add your handling code here:
        ChangePassword cp = new ChangePassword(this, rootPaneCheckingEnabled, getCurrentAcc());
        cp.setVisible(true);
    }//GEN-LAST:event_AccountMouseClicked

    private void AccountMousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_AccountMousePressed
        // TODO add your handling code here:
    }//GEN-LAST:event_AccountMousePressed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) throws UnsupportedLookAndFeelException {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Admin().setVisible(true);
            }
        });
    }
    
    public void setName(String name) {
        this.NameUser.setText(name);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel Account;
    private javax.swing.JPanel DangXuat;
    private javax.swing.JPanel MainContent;
    private javax.swing.JLabel NameUser;
    private javax.swing.JPanel NavbarMenu;
    private javax.swing.JPanel NhapHang;
    private javax.swing.JPanel PhieuNhap;
    private javax.swing.JPanel PhieuXuat;
    private javax.swing.JPanel SanPham;
    private javax.swing.JPanel TaiKhoan1;
    private javax.swing.JPanel ThongKe;
    private javax.swing.JPanel TonKho;
    private javax.swing.JPanel XuatHang;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    // End of variables declaration//GEN-END:variables
}