package com.alvarez.controller;

import com.alvarez.entyty.Categorias;
import com.alvarez.entyty.Vehiculo;
import com.alvarez.facade.CategoriasFacadeLocal;
import com.alvarez.facade.VehiculoFacadeLocal;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.faces.view.ViewScoped;

/**
 * @author cafu1
 */
@Named(value = "buscarView")
@ViewScoped
public class BuscarView implements Serializable {

    @EJB
    VehiculoFacadeLocal vehiculoEJB;
     private List<Vehiculo> lista;
    private Vehiculo objVehiculo;
    @EJB
    CategoriasFacadeLocal categoriaEJB;
    private Categorias categorias = new Categorias();
    private List<Categorias> listacategorias;
    private int id_cat_selec = 0;

    @PostConstruct
    public void ini() {
       listacategorias = categoriaEJB.findAll();
       lista = vehiculoEJB.findAll();
       categorias = listacategorias.get(0);
       objVehiculo =lista.get(0);
       
      }

    public BuscarView() {
    }

   
    public void listarPorcategorias(){
    try{
    lista = vehiculoEJB.buscarVehiculo(id_cat_selec);
    }catch(Exception e){
    
    }
    
    }
    
    
    
    
    public Vehiculo getObjVehiculo() {
        return objVehiculo;
    }

    public void setObjVehiculo(Vehiculo objVehiculo) {
        this.objVehiculo = objVehiculo;
    }

    public Categorias getCategorias() {
        return categorias;
    }

    public void setCategorias(Categorias categorias) {
        this.categorias = categorias;
    }

    public int getId_cat_selec() {
        return id_cat_selec;
    }

    public void setId_cat_selec(int id_cat_selec) {
        this.id_cat_selec = id_cat_selec;
    }

    public List<Categorias> getListacategorias() {
        return listacategorias;
    }

    public void setListacategorias(List<Categorias> listacategorias) {
        this.listacategorias = listacategorias;
    }

    public List<Vehiculo> getLista() {
        return lista;
    }

    public void setLista(List<Vehiculo> lista) {
        this.lista = lista;
    }

    
}
