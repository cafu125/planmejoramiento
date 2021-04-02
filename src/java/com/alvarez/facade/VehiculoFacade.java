/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.alvarez.facade;

import com.alvarez.entyty.Vehiculo;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author cafu1
 */
@Stateless
public class VehiculoFacade extends AbstractFacade<Vehiculo> implements VehiculoFacadeLocal {

    @PersistenceContext(unitName = "Tu_auto.comPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VehiculoFacade() {
        super(Vehiculo.class);
    }
    
    @Override
    public List<Vehiculo> buscarVehiculo(int Categoria_id)throws Exception {
        List<Vehiculo> Lista = null;
        String consulta;
       try{
       
       consulta = "SELECT v FROM Vehiculo v WHERE v.categoriaid.categoriaid = ?1";
            Query query = em.createQuery(consulta);
            query.setParameter(1, Categoria_id);
               Lista = query.getResultList();
       
       }catch(Exception e){
       throw e;
       
       }
       return Lista;
    }
    
    
    
    @Override
    public List<Vehiculo> listaPorCategoria (int Categoria_id)throws Exception{
        try {
            Query qt = em.createQuery("SELECT p FROM Vehiculo p WHERE p.categoriaid.categoriaid = :Categoria_id");
            qt.setParameter("Categoria_id", Categoria_id);
            return qt.getResultList();
        } catch (Exception e) {
            System.out.println("com.alvarez.facade.VehiculoFacade.listaPorCategoria() " + e.getMessage());
            return new ArrayList<>();
        }
    }
    
}
