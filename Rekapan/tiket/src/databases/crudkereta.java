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
public class crudkereta {
            String sql;
    static ResultSet result;   
    
    public String kode_kai;
    
    public String nama_kai;
    public String jurusan;
    public String jenis_kereta;    
    
    public void crud(String kode_kai, String nama_kai, String jurusan, String jenis_kereta)
    {
        this.kode_kai = kode_kai;
        this.nama_kai = nama_kai;
        this.jurusan = jurusan;
        this.jenis_kereta = jenis_kereta;
        
        }
        public void Create (String kode_kai, String nama_kai, String jurusan,String jenis_kereta)
        {
            try {
                sql = "INSERT INTO keretaapi VALUES "
                    + "('"+kode_kai+"','"+nama_kai+"','"+jurusan+"','"+jenis_kereta+"')";           
                java.sql.Connection conn=(Connection)coneksi.koneksiDB();
                java.sql.PreparedStatement pst=conn.prepareStatement(sql);
                pst.execute(sql);
                JOptionPane.showMessageDialog(null, "--Berhasil Disimpan!--", "BERHASIL!",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
        public void Delete(String kode_kai) {
        try {
            sql="SELECT kode_kai FROM keretaapi WHERE kode_kai='"+kode_kai+"'";
            java.sql.Connection conn=(Connection)coneksi.koneksiDB();
            java.sql.PreparedStatement pst=conn.prepareStatement(sql);
            result=pst.executeQuery(sql);
            if(result.next()) {
                sql="DELETE FROM keretaapi WHERE kode_kai='"+kode_kai+"'";
                pst=conn.prepareStatement(sql);
                pst.execute(sql);
                JOptionPane.showMessageDialog(null, " Terhapus!", "PERINGATAN",0);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

}
