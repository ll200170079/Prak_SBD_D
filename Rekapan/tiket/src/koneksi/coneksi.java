package koneksi;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Haikal
 */
public class coneksi {
   protected Connection con;
    protected Statement stat;
    protected ResultSet result;
    
    public void koneksi() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/tiket", "root", "");
            stat=con.createStatement();
        } catch(Exception e) {
            JOptionPane.showMessageDialog(null, "Koneksi Gagal"+e.getMessage());
        }
    }
    
    protected static Connection mysqkoneksi;
    public static Connection koneksiDB()throws SQLException{
        try {
            String url="jdbc:mysql://localhost:3306/tiket"; //url database
            String user="root"; //user database
            String pass=""; //password database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            mysqkoneksi=DriverManager.getConnection(url, user, pass);            
        } catch (Exception e) {
            System.err.println("koneksi gagal "+e.getMessage()); //perintah menampilkan error pada koneksi
        }
        return mysqkoneksi;
    }
}
