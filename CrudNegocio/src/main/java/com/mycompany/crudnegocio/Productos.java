/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.crudnegocio;

import com.sun.source.tree.TryTree;
import java.sql.CallableStatement;
import java.sql.Date;
import java.text.SimpleDateFormat;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JToggleButton;

/**
 *
 * @author Lenovo
 */
public class Productos {
    int id;
    int cantidad;
    int precio;
    String nombre;
    String fechaDeVencimiento;
    boolean activo;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getFechaDeVencimiento() {
        return fechaDeVencimiento;
    }

    public void setFechaDeVencimiento(String fechaDeVencimiento) {
        this.fechaDeVencimiento = fechaDeVencimiento;
    }


    public boolean isActivo() {
        return activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }
    
    
    public void insertarProducto(JTextField paramNombre, JTextField paramFecha, JTextField paramPrecio, JTextField paramCantidad){
        

        setNombre(paramNombre.getText());
        setFechaDeVencimiento(paramFecha.getText());
        setPrecio(Integer.parseInt(paramPrecio.getText()));
        setCantidad(Integer.parseInt(paramCantidad.getText()));
        
        CConexion objetoConexion = new CConexion();
        
        String consulta = ("insert into productos (nombreProducto, cantidad, precio, fechaDeVencimiento) values (?,?,?,?);");
          
        try {
            CallableStatement cs = objetoConexion.estableConexion().prepareCall(consulta);
            
            cs.setString(1, getNombre());
            cs.setInt(2, getCantidad());
            cs.setInt(3, getPrecio());
            cs.setString(4, getFechaDeVencimiento());
            
            cs.execute();
            
            JOptionPane.showMessageDialog(null, "Se insertó correctamente un producto.");
        } catch (Exception e) {
                        JOptionPane.showMessageDialog(null, "No se insertó correctamente un producto."+e.toString());
        }
    }        
}

