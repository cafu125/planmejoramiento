/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.alvarez.facade;

import com.alvarez.entyty.Usuario;
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
public class UsuarioFacade extends AbstractFacade<Usuario> implements UsuarioFacadeLocal {

    @PersistenceContext(unitName = "Tu_auto.comPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }
 
    @Override
     public Usuario iniciarSesion(Usuario us) {
        Usuario usuario = null;
        String consulta;
        try {
            consulta = "FROM Usuario u WHERE u.correo = ?1 and u.contraseña = ?2";
            Query query = em.createQuery(consulta);
            query.setParameter(1, us.getCorreo());
            query.setParameter(2, us.getContraseña());
            List<Usuario> lista = query.getResultList();
            if (!lista.isEmpty()) {
                usuario = lista.get(0);
            }
        } catch (Exception e) {
            throw e;
        } 
       return usuario;
    }
    
    
    @Override
     public Usuario recuperarClave( String correoIn){
        try {
           Query qt = em.createQuery("SELECT p FROM Usuario p WHERE p.correo = :correoIn");
           qt.setParameter("correoIn", correoIn);
           return  (Usuario) qt.getSingleResult();
        } catch (Exception e) {
            return new Usuario();
        }        
    }
    
    
}
