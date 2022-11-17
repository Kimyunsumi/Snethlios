package form;

import chart.ModelChart;
import com.snethlios.dao.PhieuXuatDAO;
import com.snethlios.dao.ThongKeDAO;
import java.awt.CardLayout;
import java.awt.Color;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.ImageIcon;
import javax.swing.table.DefaultTableModel;
import model.Model_Card;

public class ThongKeJPanel extends javax.swing.JPanel {
//[998, 649]
    public ThongKeJPanel() {
        initComponents();
        card1.setData(new Model_Card(new ImageIcon(getClass().getResource("/icon/stock.png")), "Tổng khách hàng/ngày", "23", "Increased by 60%"));
        card2.setData(new Model_Card(new ImageIcon(getClass().getResource("/icon/profit.png")), "Tổng doanh thu/ngày", "$15000", "Increased by 25%"));
        card3.setData(new Model_Card(new ImageIcon(getClass().getResource("/icon/flag.png")), "Tổng doanh thu/tháng", "$300000", "Increased by 70%"));
        card4.setData(new Model_Card(new ImageIcon(getClass().getResource("/icon/flag.png")), "Tổng doanh thu/năm", "$9300000", "Increased by 50%"));
        
        //tieu de chart
        chart.addLegend("Income", new Color(245, 189, 135));
        chart.addLegend("Expense", new Color(135, 189, 245));
        chart.addLegend("Profit", new Color(189, 135, 245));
        chart.addLegend("Cost", new Color(139, 229, 222));
        //data chart
        chart.addData(new ModelChart("January", new double[]{800, 200, 80,89}));
        chart.addData(new ModelChart("February", new double[]{600, 750, 90,150}));
        chart.addData(new ModelChart("March", new double[]{200, 350, 460,900}));
        chart.addData(new ModelChart("April", new double[]{480, 150, 750,700}));
        chart.addData(new ModelChart("May", new double[]{350, 540, 300,150}));
        chart.addData(new ModelChart("June", new double[]{190, 280, 81,200}));
        init();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        card1 = new component.CardJPanel();
        card2 = new component.CardJPanel();
        card3 = new component.CardJPanel();
        card4 = new component.CardJPanel();
        jTabbedPane1 = new javax.swing.JTabbedPane();
        pnlDoanhThu = new javax.swing.JPanel();
        pnlCard = new javax.swing.JPanel();
        jPanel35 = new javax.swing.JPanel();
        jLabel51 = new javax.swing.JLabel();
        jScrollPane12 = new javax.swing.JScrollPane();
        tblDoanhThu = new javax.swing.JTable();
        jPanel7 = new javax.swing.JPanel();
        chart = new chart.ChartJPanel();
        Năm = new javax.swing.JLabel();
        cboNam = new javax.swing.JComboBox<>();
        Năm1 = new javax.swing.JLabel();
        ThongKe_rdoBang = new javax.swing.JRadioButton();
        ThongKe_rdoBieuDo = new javax.swing.JRadioButton();
        jButton19 = new javax.swing.JButton();
        pnlSanPham = new javax.swing.JPanel();
        jLabel52 = new javax.swing.JLabel();
        jScrollPane13 = new javax.swing.JScrollPane();
        tblSanPham = new javax.swing.JTable();

        setBackground(new java.awt.Color(247, 247, 247));

        jPanel1.setBackground(new java.awt.Color(237, 237, 237));
        jPanel1.setLayout(new java.awt.GridLayout(1, 0, 10, 0));

        card1.setColor1(new java.awt.Color(21, 96, 192));
        card1.setColor2(new java.awt.Color(185, 43, 39));
        jPanel1.add(card1);

        card2.setColor1(new java.awt.Color(56, 239, 125));
        card2.setColor2(new java.awt.Color(17, 153, 142));
        jPanel1.add(card2);

        card3.setColor1(new java.awt.Color(255, 153, 102));
        card3.setColor2(new java.awt.Color(255, 94, 98));
        jPanel1.add(card3);

        card4.setColor1(new java.awt.Color(195, 20, 50));
        card4.setColor2(new java.awt.Color(36, 11, 53));
        jPanel1.add(card4);

        pnlDoanhThu.setOpaque(false);

        pnlCard.setLayout(new java.awt.CardLayout());

        jPanel35.setBackground(new java.awt.Color(255, 255, 255));

        jLabel51.setFont(new java.awt.Font("SansSerif", 1, 14)); // NOI18N
        jLabel51.setText("CHI TIẾT DOANH THU");

        tblDoanhThu.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "Tháng", "Tổng số bán", "Tổng giá bán", "Tổng giảm giá", "Doanh thu"
            }
        ));
        jScrollPane12.setViewportView(tblDoanhThu);

        javax.swing.GroupLayout jPanel35Layout = new javax.swing.GroupLayout(jPanel35);
        jPanel35.setLayout(jPanel35Layout);
        jPanel35Layout.setHorizontalGroup(
            jPanel35Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel35Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel51)
                .addGap(304, 304, 304))
            .addGroup(jPanel35Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane12, javax.swing.GroupLayout.DEFAULT_SIZE, 738, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel35Layout.setVerticalGroup(
            jPanel35Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel35Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel51)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane12, javax.swing.GroupLayout.DEFAULT_SIZE, 348, Short.MAX_VALUE)
                .addContainerGap())
        );

        pnlCard.add(jPanel35, "card3");

        jPanel7.setBackground(new java.awt.Color(255, 255, 255));

        javax.swing.GroupLayout jPanel7Layout = new javax.swing.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 750, Short.MAX_VALUE)
            .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel7Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(chart, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 385, Short.MAX_VALUE)
            .addGroup(jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(jPanel7Layout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(chart, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
        );

        pnlCard.add(jPanel7, "card2");

        Năm.setText("Năm");

        Năm1.setText("Lựa chọn hiển thị ");

        buttonGroup1.add(ThongKe_rdoBang);
        ThongKe_rdoBang.setSelected(true);
        ThongKe_rdoBang.setText("Bảng");
        ThongKe_rdoBang.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ThongKe_rdoBangActionPerformed(evt);
            }
        });

        buttonGroup1.add(ThongKe_rdoBieuDo);
        ThongKe_rdoBieuDo.setText("Biểu đồ");
        ThongKe_rdoBieuDo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ThongKe_rdoBieuDoActionPerformed(evt);
            }
        });

        jButton19.setText("Xuất file excel");

        javax.swing.GroupLayout pnlDoanhThuLayout = new javax.swing.GroupLayout(pnlDoanhThu);
        pnlDoanhThu.setLayout(pnlDoanhThuLayout);
        pnlDoanhThuLayout.setHorizontalGroup(
            pnlDoanhThuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlDoanhThuLayout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(pnlDoanhThuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(Năm)
                    .addComponent(cboNam, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(Năm1)
                    .addGroup(pnlDoanhThuLayout.createSequentialGroup()
                        .addComponent(ThongKe_rdoBang)
                        .addGap(18, 18, 18)
                        .addComponent(ThongKe_rdoBieuDo))
                    .addComponent(jButton19, javax.swing.GroupLayout.PREFERRED_SIZE, 201, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(776, Short.MAX_VALUE))
            .addGroup(pnlDoanhThuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(pnlDoanhThuLayout.createSequentialGroup()
                    .addGap(242, 242, 242)
                    .addComponent(pnlCard, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addContainerGap()))
        );
        pnlDoanhThuLayout.setVerticalGroup(
            pnlDoanhThuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlDoanhThuLayout.createSequentialGroup()
                .addGap(42, 42, 42)
                .addComponent(Năm)
                .addGap(18, 18, 18)
                .addComponent(cboNam, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(Năm1)
                .addGap(28, 28, 28)
                .addGroup(pnlDoanhThuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ThongKe_rdoBang)
                    .addComponent(ThongKe_rdoBieuDo))
                .addGap(40, 40, 40)
                .addComponent(jButton19, javax.swing.GroupLayout.PREFERRED_SIZE, 56, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(115, Short.MAX_VALUE))
            .addGroup(pnlDoanhThuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(pnlDoanhThuLayout.createSequentialGroup()
                    .addContainerGap()
                    .addComponent(pnlCard, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
        );

        jTabbedPane1.addTab("Doanh thu", pnlDoanhThu);

        pnlSanPham.setOpaque(false);

        jLabel52.setFont(new java.awt.Font("SansSerif", 1, 14)); // NOI18N
        jLabel52.setText("CHI TIẾT SẢN PHẨM");

        tblSanPham.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Mã SP", "Tên SP", "Số lượng đã bán", "Số lượng còn lại"
            }
        ));
        jScrollPane13.setViewportView(tblSanPham);

        javax.swing.GroupLayout pnlSanPhamLayout = new javax.swing.GroupLayout(pnlSanPham);
        pnlSanPham.setLayout(pnlSanPhamLayout);
        pnlSanPhamLayout.setHorizontalGroup(
            pnlSanPhamLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlSanPhamLayout.createSequentialGroup()
                .addGap(401, 401, 401)
                .addComponent(jLabel52)
                .addContainerGap(451, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlSanPhamLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane13)
                .addContainerGap())
        );
        pnlSanPhamLayout.setVerticalGroup(
            pnlSanPhamLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlSanPhamLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel52)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane13, javax.swing.GroupLayout.DEFAULT_SIZE, 354, Short.MAX_VALUE)
                .addContainerGap())
        );

        jTabbedPane1.addTab("Sản phẩm", pnlSanPham);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 958, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jTabbedPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 986, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(20, 20, 20)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 193, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jTabbedPane1)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    private void ThongKe_rdoBieuDoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ThongKe_rdoBieuDoActionPerformed
        // TODO add your handling code here:
        CardLayout layout = (CardLayout) pnlCard.getLayout();
        layout.last(pnlCard);
    }//GEN-LAST:event_ThongKe_rdoBieuDoActionPerformed

    private void ThongKe_rdoBangActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ThongKe_rdoBangActionPerformed
        // TODO add your handling code here:
        CardLayout layout = (CardLayout) pnlCard.getLayout();
        layout.first(pnlCard);
    }//GEN-LAST:event_ThongKe_rdoBangActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel Năm;
    private javax.swing.JLabel Năm1;
    private javax.swing.JRadioButton ThongKe_rdoBang;
    private javax.swing.JRadioButton ThongKe_rdoBieuDo;
    private javax.swing.ButtonGroup buttonGroup1;
    private component.CardJPanel card1;
    private component.CardJPanel card2;
    private component.CardJPanel card3;
    private component.CardJPanel card4;
    private javax.swing.JComboBox<String> cboNam;
    private chart.ChartJPanel chart;
    private javax.swing.JButton jButton19;
    private javax.swing.JLabel jLabel51;
    private javax.swing.JLabel jLabel52;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel35;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JScrollPane jScrollPane12;
    private javax.swing.JScrollPane jScrollPane13;
    private javax.swing.JTabbedPane jTabbedPane1;
    private javax.swing.JPanel pnlCard;
    private javax.swing.JPanel pnlDoanhThu;
    private javax.swing.JPanel pnlSanPham;
    private javax.swing.JTable tblDoanhThu;
    private javax.swing.JTable tblSanPham;
    // End of variables declaration//GEN-END:variables
    ThongKeDAO dao = new ThongKeDAO();
    PhieuXuatDAO pxdao = new PhieuXuatDAO();
    
    void init() {
        this.fillComboBoxNam();
        
    }
    private void fillComboBoxNam() {
        DefaultComboBoxModel model = (DefaultComboBoxModel) cboNam.getModel();
        model.removeAllElements();
        List<Integer> list = pxdao.selectYears();
        for (Integer year : list) {
            model.addElement(year);
        }
    }
//    private void fillTableDoanhThu() {
//        DefaultTableModel model = (DefaultTableModel) tblDoanhThu.getModel();
//        model.setRowCount(0);
//        int nam = (Integer) cboNam.getSelectedItem();
//        List<Object[]> list = dao.getDoanhThu(nam);
//        for (Object[] row : list) {
//            model.addRow(row);
//        }
//
//    }
    //    private void fillTableSanPham() {
//        DefaultTableModel model = (DefaultTableModel) tblDoanhThu.getModel();
//        model.setRowCount(0);
//        int nam = (Integer) cboNam.getSelectedItem();
//        List<Object[]> list = dao.getDoanhThu(nam);
//        for (Object[] row : list) {
//            model.addRow(row);
//        }
//
//    }
    

}
