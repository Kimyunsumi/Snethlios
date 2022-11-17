/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package main;

import com.snethlios.utils.XImage;
import event.EventMenuSelected;
import form.ChaoJDialog;
import form.DangNhapJDialog;
import form.DoiMKJPanel;
import form.Form_1;
import form.Form_2;
import form.Form_3;
import form.KhachHangJPanel;
import form.NewJPanel;
import form.NhanVienJPanel;
import form.SanPhamJPanel;
import form.ThongKeJPanel;
import form.TrangChuJPanel;
import javax.swing.JComponent;

/**
 *
 * @author Admin
 */
public class MainJFrame extends javax.swing.JFrame {

    /**
     * Creates new form MainJFrame
     */
    private Form_1 form1;
    private Form_2 form2;
    private Form_3 form3;
    private ThongKeJPanel thongKe;
    private NewJPanel test;
    private TrangChuJPanel trangChu;
    private SanPhamJPanel sanPham;
    private NhanVienJPanel nhanVien;
    private KhachHangJPanel khachHang;
    private DoiMKJPanel doiMK;

    public MainJFrame() {
        initComponents();
//        setBackground(new Color(0, 0, 0, 0));
//        menuJPanel1.initMoving(this);
//        sp.setVerticalScrollBar(new ScrollBar());
        trangChu = new TrangChuJPanel();
        form1 = new Form_1();
        form2 = new Form_2();
        form3 = new Form_3();
        thongKe = new ThongKeJPanel();
        test = new NewJPanel();
        sanPham = new SanPhamJPanel();
        nhanVien = new NhanVienJPanel();
        khachHang = new KhachHangJPanel();
        doiMK = new DoiMKJPanel();

        menu.addEventMenuSelected(new EventMenuSelected() {
            @Override
            public void selected(int index) {
//                System.out.println("Selected index" + index);
                if (index == 0) {
                    setForm(trangChu);
                } else if (index == 1) {
                    setForm(sanPham);
                } else if (index == 2) {
                    setForm(sanPham);
                } else if (index == 3) {
                    setForm(test);
                } else if (index == 4) {
//                    setForm(kh);
                } else if (index == 5) {
                    setForm(thongKe);
                } else if (index == 6) {
                    setForm(khachHang);
                } else if (index == 7) {
                    setForm(nhanVien);
                } else if (index == 8) {
                    setForm(doiMK);
                }
            }
        });
        //  set when system open start with home form
        setForm(new TrangChuJPanel());
        init();
    }

    private void setForm(JComponent com) {
        mainPanel.removeAll();
        mainPanel.add(com);
        mainPanel.repaint();
        mainPanel.revalidate();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelBorderJPanel1 = new swing.PanelBorderJPanel();
        menu = new component.MenuJPanel();
        mainPanel = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        panelBorderJPanel1.setBackground(new java.awt.Color(247, 247, 247));

        mainPanel.setOpaque(false);
        mainPanel.setLayout(new java.awt.BorderLayout());

        javax.swing.GroupLayout panelBorderJPanel1Layout = new javax.swing.GroupLayout(panelBorderJPanel1);
        panelBorderJPanel1.setLayout(panelBorderJPanel1Layout);
        panelBorderJPanel1Layout.setHorizontalGroup(
            panelBorderJPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelBorderJPanel1Layout.createSequentialGroup()
                .addComponent(menu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(mainPanel, javax.swing.GroupLayout.DEFAULT_SIZE, 1000, Short.MAX_VALUE))
        );
        panelBorderJPanel1Layout.setVerticalGroup(
            panelBorderJPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(menu, javax.swing.GroupLayout.DEFAULT_SIZE, 650, Short.MAX_VALUE)
            .addComponent(mainPanel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelBorderJPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelBorderJPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
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
            java.util.logging.Logger.getLogger(MainJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(MainJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(MainJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(MainJFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new MainJFrame().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel mainPanel;
    private component.MenuJPanel menu;
    private swing.PanelBorderJPanel panelBorderJPanel1;
    // End of variables declaration//GEN-END:variables

    void init() {
        new ChaoJDialog(this, true).setVisible(true);
        new DangNhapJDialog(this, true).setVisible(true);
        this.setIconImage(XImage.getApImage());
    }

}
