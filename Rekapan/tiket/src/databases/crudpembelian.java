/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databases;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import koneksi.coneksi;
/**
 *
 * @author Haikal
 */
public class crudpembelian {
                String sql;
    static ResultSet result;   
    
    public int id_pembelian;
    public int no_identitas;
    public int harga;
    public int jumlah;
    public int total_harga;    


public void crud(int id_pembelian,int no_identitas, int harga, int jumlah, int total_harga)
    {
        this.id_pembelian = id_pembelian;
        this.no_identitas = no_identitas;
        this.harga = harga;
        this.jumlah = jumlah;
        this.total_harga = total_harga;
        
        }
        public void Create (int id_pembelian, int no_identitas, int harga, int jumlah, int total_harga)
        {
            try {
                sql = "INSERT INTO pembelian VALUES "
                    + "('"+id_pembelian+"','"+no_identitas+"','"+harga+"','"+jumlah+"','"+total_harga+"')";           
                java.sql.Connection conn=(Connection)coneksi.koneksiDB();
                java.sql.PreparedStatement pst=conn.prepareStatement(sql);
                pst.execute(sql);
                JOptionPane.showMessageDialog(null, "--Berhasil Disimpan!--", "BERHASIL!",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
        
}