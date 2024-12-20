/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JDialog.java to edit this template
 */
package view;

import com.formdev.flatlaf.FlatLightLaf;
import controller.BCrypt;
import controller.SendEmailSMTP;
import dao.AccountDAO;
import java.awt.CardLayout;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import model.Account;
/**
 *
 * @author taki
 */
public class RecoverPassword extends javax.swing.JDialog {

    /**
     * Creates new form RecoverPassword
     */
    private String otpNumber;

    public RecoverPassword(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel3 = new javax.swing.JPanel();
        NhapEmail = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        txtEmail = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        XacThuc = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        txtOtp = new javax.swing.JTextField();
        jButton2 = new javax.swing.JButton();
        jLabel4 = new javax.swing.JLabel();
        MatKhauMoi = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        txtPassword = new javax.swing.JPasswordField();
        jButton3 = new javax.swing.JButton();
        jPanel2 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel3.setLayout(new java.awt.CardLayout());

        NhapEmail.setBackground(new java.awt.Color(255, 255, 255));

        jLabel2.setFont(new java.awt.Font("SF Pro Display", 0, 16)); // NOI18N
        jLabel2.setText("Nhập địa chỉ email tài khoản");

        jButton1.setText("Gửi mã xác nhận");
        jButton1.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout NhapEmailLayout = new javax.swing.GroupLayout(NhapEmail);
        NhapEmail.setLayout(NhapEmailLayout);
        NhapEmailLayout.setHorizontalGroup(
            NhapEmailLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(NhapEmailLayout.createSequentialGroup()
                .addGap(22, 22, 22)
                .addGroup(NhapEmailLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2)
                    .addGroup(NhapEmailLayout.createSequentialGroup()
                        .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, 251, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 158, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(83, Short.MAX_VALUE))
        );
        NhapEmailLayout.setVerticalGroup(
            NhapEmailLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(NhapEmailLayout.createSequentialGroup()
                .addGap(26, 26, 26)
                .addComponent(jLabel2)
                .addGap(18, 18, 18)
                .addGroup(NhapEmailLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 44, Short.MAX_VALUE))
        );

        jPanel3.add(NhapEmail, "card2");

        XacThuc.setBackground(new java.awt.Color(255, 255, 255));

        jLabel3.setFont(new java.awt.Font("SF Pro Display", 0, 16)); // NOI18N
        jLabel3.setText("Mã xác nhận gồm 6 chữ số đã được gửi vào địa chỉ email của bạn");

        jButton2.setText("Xác nhận");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jLabel4.setFont(new java.awt.Font("SF Pro Display", 0, 16)); // NOI18N
        jLabel4.setText("Nhập mã xác nhận:");

        javax.swing.GroupLayout XacThucLayout = new javax.swing.GroupLayout(XacThuc);
        XacThuc.setLayout(XacThucLayout);
        XacThucLayout.setHorizontalGroup(
            XacThucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(XacThucLayout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addGroup(XacThucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(XacThucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                        .addComponent(jLabel3)
                        .addGroup(XacThucLayout.createSequentialGroup()
                            .addComponent(txtOtp, javax.swing.GroupLayout.PREFERRED_SIZE, 254, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(27, 27, 27)
                            .addComponent(jButton2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 211, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        XacThucLayout.setVerticalGroup(
            XacThucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(XacThucLayout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 16, Short.MAX_VALUE)
                .addGroup(XacThucLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtOtp, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(23, 23, 23))
        );

        jPanel3.add(XacThuc, "card3");

        MatKhauMoi.setBackground(new java.awt.Color(255, 255, 255));

        jLabel5.setFont(new java.awt.Font("SF Pro Display", 0, 16)); // NOI18N
        jLabel5.setText("Nhập mật khẩu mới");

        jButton3.setText("Đổi mật khẩu");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout MatKhauMoiLayout = new javax.swing.GroupLayout(MatKhauMoi);
        MatKhauMoi.setLayout(MatKhauMoiLayout);
        MatKhauMoiLayout.setHorizontalGroup(
            MatKhauMoiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(MatKhauMoiLayout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addGroup(MatKhauMoiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(MatKhauMoiLayout.createSequentialGroup()
                        .addComponent(jLabel5)
                        .addContainerGap(352, Short.MAX_VALUE))
                    .addGroup(MatKhauMoiLayout.createSequentialGroup()
                        .addComponent(txtPassword, javax.swing.GroupLayout.PREFERRED_SIZE, 298, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 147, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(30, 30, 30))))
        );
        MatKhauMoiLayout.setVerticalGroup(
            MatKhauMoiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(MatKhauMoiLayout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(jLabel5)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(MatKhauMoiLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtPassword, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton3, javax.swing.GroupLayout.DEFAULT_SIZE, 42, Short.MAX_VALUE))
                .addContainerGap(42, Short.MAX_VALUE))
        );

        jPanel3.add(MatKhauMoi, "card4");

        jPanel2.setBackground(java.awt.Color.blue);

        jLabel1.setFont(new java.awt.Font("SF Pro Display", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setText("KHÔI PHỤC MẬT KHẨU");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(97, 97, 97)
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addContainerGap(18, Short.MAX_VALUE)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(17, 17, 17))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addGroup(layout.createSequentialGroup()
                .addGap(75, 75, 75)
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        String email = txtEmail.getText();
        if (email.equals("")) {
            JOptionPane.showMessageDialog(this, "Email không được để trống !");
        } else {
            if (isValid(email)) {
                if (checkEmail(email)) {
                    otpNumber = getOTP();
                    SendEmailSMTP.sendOTP(email, otpNumber);
                    CardLayout forgotPassword = (CardLayout) jPanel3.getLayout();
                    forgotPassword.next(jPanel3);
                } else {
                    JOptionPane.showMessageDialog(this, "Email không tồn tại trên hệ thống !");
                }
            } else {
                JOptionPane.showMessageDialog(this, "Vui lòng nhập đúng định dạng email !");
            }
        }
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        String otp = txtOtp.getText();
        if (otp.equals("")) {
            JOptionPane.showMessageDialog(this, "Không được để trống !");
        } else {
            if (otp.length() < 6 || otp.length() > 6) {
                JOptionPane.showMessageDialog(this, "Vui lòng nhập đúng 6 chữ số !");
            } else {
                if (otp.equals(otpNumber)) {
                    CardLayout forgotPassword = (CardLayout) jPanel3.getLayout();
                    forgotPassword.next(jPanel3);
                } else {
                    JOptionPane.showMessageDialog(this, "Mã xác nhận không chính xác !");
                }
            }
        }
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        String password = txtPassword.getText();
        AccountDAO.getInstance().updatePassword(txtEmail.getText(),BCrypt.hashpw(password,BCrypt.gensalt(12)));
        JOptionPane.showMessageDialog(this, "Đổi mật khẩu thành công !");
        this.dispose();
    }//GEN-LAST:event_jButton3ActionPerformed

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
            java.util.logging.Logger.getLogger(RecoverPassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(RecoverPassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(RecoverPassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(RecoverPassword.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        UIManager.setLookAndFeel(new FlatLightLaf());
        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                RecoverPassword dialog = new RecoverPassword(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }
    
    static boolean isValid(String email) {
        String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
        return email.matches(regex);
    }

    private boolean checkEmail(String email) {
        ArrayList<Account> acc = AccountDAO.getInstance().selectAll();
        for (Account i : acc) {
            if (i.getEmail().toLowerCase().equals(email.toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    private String getOTP() {
        int min = 100000;
        int max = 999999;
        return Integer.toString((int) ((Math.random() * (max - min)) + min));
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel MatKhauMoi;
    private javax.swing.JPanel NhapEmail;
    private javax.swing.JPanel XacThuc;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JTextField txtEmail;
    private javax.swing.JTextField txtOtp;
    private javax.swing.JPasswordField txtPassword;
    // End of variables declaration//GEN-END:variables
}
