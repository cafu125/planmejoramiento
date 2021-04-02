package com.alvarez.facade;

import com.alvarez.entyty.Datospersonales;
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
public class DatospersonalesFacade extends AbstractFacade<Datospersonales> implements DatospersonalesFacadeLocal {

    @PersistenceContext(unitName = "Tu_auto.comPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public DatospersonalesFacade() {
        super(Datospersonales.class);
    }
    
  
    @Override
    public List<Datospersonales> buscarPornombre (int Datos_id)throws Exception{
        try {
            Query qt = em.createQuery("SELECT d FROM Datospersonales d WHERE d.datosid = :Datos_id");
            qt.setParameter("Datos_id", Datos_id);
            return qt.getResultList();
        } catch (Exception e) {
            System.out.println("com.alvarez.facade.Datospersonalesfacade.listapornombres() " + e.getMessage());
            return new ArrayList<>();
        }
    }
}
