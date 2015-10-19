/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package eisidb;
import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import modelo.usuario;

/**
 *
 * @author Escobar
 */
public class usuariodb implements Serializable{
    private final List<usuario> usuarios =new ArrayList<usuario>();
    
    public boolean guardar(String nombre, String correo, String carnet, String contrasena) {
        boolean guardado = true;
        try {
            String sentenciaSql = "INSERT INTO USUARIO (nombre,correo,carnet,contrasena) values(?,?,?,?)";
            PreparedStatement preparedStatement;
            preparedStatement = Conexion.getConexion().prepareStatement(sentenciaSql);
            preparedStatement.setString(1, nombre);
            preparedStatement.setString(2, correo);
            preparedStatement.setString(3, carnet);
            preparedStatement.setString(4, contrasena);
            preparedStatement.execute();
            
        }catch (SQLException e) {
            guardado = false;
        }
        return guardado;
    }

public boolean autenticar(String carnet, String clave) {
        boolean res = false;
        try {
            String sentenciaSql ="SELECT * from USUARIO where carnet ='"+carnet +"' and contrasena = '"+clave+"'";
            Conexion c= new Conexion();
            Statement statement = c.getConexion().createStatement();
            ResultSet rs = statement.executeQuery(sentenciaSql);
            while (rs.next()) {
                res = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(usuariodb.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Ocurrió un error al guardar");
        }

        return res;
    }
 


}



