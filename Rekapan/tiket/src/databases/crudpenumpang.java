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
public class crudpenumpang {
        String sql;
    static ResultSet result;   
    
    public String identitas;
    public int no_identitas;
    public String kode_kai;
    public String nama_penumpang;
    public String alamat;
    public String tgl_lahir;    
    
    public void crud(String identitas, int no_identitas, String kode_kai, String nama_penumpang,String tgl_lahir,String alamat)
    {
        this.identitas = identitas;
        this.no_identitas = no_identitas;
        this.kode_kai = kode_kai;
        this.nama_penumpang = nama_penumpang;
        this.tgl_lahir = tgl_lahir;
        this.alamat = alamat;
        }

    public void Create (String identitas, int no_identitas, String kode_kai, String nama_penumpang,String tgl_lahir,String alamat  )
    {
        try {
            sql = "INSERT INTO penumpang VALUES "
                    + "('"+identitas+"','"+no_identitas+"','"+kode_kai+"','"+nama_penumpang+"','"+tgl_lahir+"' ,'"+alamat+"')";           
            java.sql.Connection conn=(Connection)coneksi.koneksiDB();
            java.sql.PreparedStatement pst=conn.prepareStatement(sql);
            pst.execute(sql);
            JOptionPane.showMessageDialog(null, "--Berhasil Disimpan!--", "BERHASIL!",1);
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
    public void Edit (String identitas, int no_identitas,String kode_kai, String nama_penumpang,String tgl_lahir,String alamat) {
        try {
            sql="SELECT * FROM penumpang WHERE no_identitas = '"+no_identitas+"'";
            java.sql.Connection conn=(Connection)coneksi.koneksiDB();
            java.sql.PreparedStatement pst=conn.prepareStatement(sql);
            result=pst.executeQuery(sql);
            if(result.next()) {
               sql = "UPDATE penumpang SET "
                       + "identitas='"+identitas+"',"
                       + "no_identitas='"+no_identitas+"',"
                       + "kode_kai='"+kode_kai+"'," 
                       + "nama_penumpang='"+nama_penumpang+"',"
                       + "tgl_lahir='"+tgl_lahir+"',"
                       + "alamat='"+alamat+"' WHERE no_identitas = '"+no_identitas+"'";
               java.sql.PreparedStatement pst1=conn.prepareStatement(sql);
               pst1.execute(sql);
               JOptionPane.showMessageDialog(null, "--Edit Berhasil!--", "BERHASIL!",1);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        
    }
        public void Delete(int no_identitas) {
        try {
            sql="SELECT no_identitas FROM penumpang WHERE no_identitas='"+no_identitas+"'";
            java.sql.Connection conn=(Connection)coneksi.koneksiDB();
            java.sql.PreparedStatement pst=conn.prepareStatement(sql);
            result=pst.executeQuery(sql);
            if(result.next()) {
                sql="DELETE FROM penumpang WHERE no_identitas='"+no_identitas+"'";
                pst=conn.prepareStatement(sql);
                pst.execute(sql);
                JOptionPane.showMessageDialog(null, " Terhapus!", "PERINGATAN",0);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

     //To change body of generated methods, choose Tools | Templates.

 //To change body of generated methods, choose Tools | Templates.
    }
    

   

