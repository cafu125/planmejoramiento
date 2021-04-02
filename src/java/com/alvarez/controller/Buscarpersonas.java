package com.alvarez.controller;

import com.alvarez.entyty.Datospersonales;
import com.alvarez.facade.DatospersonalesFacadeLocal;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;

/**
 *
 * @author cafu1
 */
@Named(value = "buscarpersonas")
@RequestScoped
public class Buscarpersonas implements Serializable {
    @EJB
    DatospersonalesFacadeLocal datosEJB;
    private List<Datospersonales> datos;
    private Datospersonales odjdatos = new Datospersonales();
    private int id_datos_selec = 0;
       
       
       @PostConstruct
    public void ini() {
       datos= datosEJB.findAll();
            odjdatos = datos.get(0);
           }
    
    public Buscarpersonas() {
    }
    
    public void buscarPornombre(){
    try{
        datos=datosEJB.buscarPornombre(id_datos_selec);
    
    }catch(Exception e){
            
         }
    
    }
    
    
    
    

   

    
    

    public int getId_datos_selec() {
        return id_datos_selec;
    }

    public void setId_datos_selec(int id_datos_selec) {
        this.id_datos_selec = id_datos_selec;
    }

    public Datospersonales getOdjdatos() {
        return odjdatos;
    }

    public void setOdjdatos(Datospersonales odjdatos) {
        this.odjdatos = odjdatos;
    }

    public List<Datospersonales> getDatos() {
        return datos;
    }

    public void setDatos(List<Datospersonales> datos) {
        this.datos = datos;
    }
    
    
    
    
}
