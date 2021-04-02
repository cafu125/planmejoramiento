/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.alvarez.facade;

import com.alvarez.entyty.Vehiculo;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author cafu1
 */
@Local
public interface VehiculoFacadeLocal {

    void create(Vehiculo vehiculo);

    void edit(Vehiculo vehiculo);

    void remove(Vehiculo vehiculo);

    Vehiculo find(Object id);

    List<Vehiculo> findAll();

    List<Vehiculo> findRange(int[] range);

    int count();

    public List<Vehiculo> buscarVehiculo(int Categoria_id)throws Exception;

    public List<Vehiculo> listaPorCategoria(int Categoria_id)throws Exception;
    
}
