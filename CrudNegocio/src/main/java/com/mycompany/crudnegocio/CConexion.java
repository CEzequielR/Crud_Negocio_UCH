package com.mycompany.crudnegocio;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class CConexion {
    
    Connection conectar;
        String url="jdbc:mysql://localhost:3306/bdnegocio";
        String usuario="root";
        String pass="";
    
    
    public Connection estableConexion(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conectar = DriverManager.getConnection(url,usuario,pass);
            JOptionPane.showMessageDialog(null, "La conexión se ha realizado con exito.");
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, "Error al conectarse a la base de datos."+e.toString());
        }
        return conectar;
    }
}
