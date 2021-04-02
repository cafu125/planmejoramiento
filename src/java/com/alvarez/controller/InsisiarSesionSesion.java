package com.alvarez.controller;

import com.alvarez.entyty.Datospersonales;
import com.alvarez.entyty.Usuario;
import com.alvarez.extras.Email;
import com.alvarez.facade.DatospersonalesFacadeLocal;
import com.alvarez.facade.UsuarioFacadeLocal;
import java.io.IOException;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpSession;
import org.primefaces.PrimeFaces;

/**
 *
 * @author carlos
 */
@Named(value = "insisiarSesionSesion")
@SessionScoped
public class InsisiarSesionSesion implements Serializable {
    @EJB
    DatospersonalesFacadeLocal datosEJB;
     private Datospersonales datospersonales;
      private List<Datospersonales> listadatos;
    @EJB
    UsuarioFacadeLocal usuarioEJB;
      private ArrayList<Usuario> listaUsuarios = new ArrayList<>();
       private Usuario usuario;
    
    @PostConstruct
    public void ini(){
    usuario = new Usuario();
  datospersonales = new Datospersonales();
    listaUsuarios.addAll(usuarioEJB.findAll());
        }
    
    public InsisiarSesionSesion() {
    }

    
    public void iniciarSesion(){
    String mensajeSw = " " ;
    
        try{
             usuario = usuarioEJB.iniciarSesion(usuario);
       if(usuario != null){
         
        usuarioEJB.iniciarSesion(usuario);
     FacesContext fc = FacesContext.getCurrentInstance();
      mensajeSw = "swal('Bienvenido ' , ' Al sistema  ', 'aviso')";
                fc.getExternalContext().redirect("../Comprador/clientes.xhtml");
                
       }else{
        mensajeSw = "swal('El usuario ' , ' ingreso datos incorrectos  ', 'error')";
       }
        }catch(IOException e){
         mensajeSw = "swal('El usuario ' , ' no se encuentra registrado   ', 'error')";
        }
         PrimeFaces.current().executeScript(mensajeSw);
    }
     
        
    public void sesionVendedor(){
        String mensajeSw = " ";
        
        try{
       usuario = usuarioEJB.iniciarSesion(usuario);
       if(usuario != null){
           
     FacesContext fc = FacesContext.getCurrentInstance();
                fc.getExternalContext().redirect("../Ventas/vendedor.xhtml");
                 mensajeSw = "swal('Bienvenido ' , ' al sistema  ', 'aviso')";
       }else{
        mensajeSw = "swal('El usuario ' , ' ingreso datos incorrectos  ', 'error')";
              }
        }catch(IOException e){
         mensajeSw = "swal('El usuario ' , ' no se encuentra registrado  ', 'error')";
        }
         PrimeFaces.current().executeScript(mensajeSw);
    }
     
     
    
    
    
    
    public void cerrarSesion() {
        
        try {
            
            
            FacesContext fc = FacesContext.getCurrentInstance();
            ExternalContext ext = FacesContext.getCurrentInstance().getExternalContext();
            String ctx = ext.getRequestContextPath();
            
            ((HttpSession) ext.getSession(false)).invalidate();
            
            fc.getExternalContext().redirect("../index.xhtml");
        }catch(IOException e) {
            System.out.println(" Error cerrando sesion DatospersnalesSesion:cerrarSesion " + e.getMessage());
        }

    }
       
     public void actualizarMisDatos() {
        String mensajeSw = " ";
        try {
            usuarioEJB.edit(usuario);
            mensajeSw = "swal('Se actualizaron ' , 'Sus datos exitosamente  ', 'success')";
        } catch (Exception e) {
            mensajeSw = "swal('No se puede' , ' Actualizar mis datos  ', 'error')";
        }
        PrimeFaces.current().executeScript(mensajeSw);
    }

     
      public void correo() {
          String mensajeSw = "";
        try {
              for (Usuario Usuario1 : listaUsuarios) {
                  Email.sendModificacion(Usuario1.getCorreo(),
                          Usuario1.getDatosid().getNombre() + " " + Usuario1.getDatosid().getApellido(),
                          Usuario1.getCorreo(), Usuario1.getTipoCuenta());
                  
                  mensajeSw = "swal('Mensage' , ' enviado correctamente  ', 'success')";
              }
        } catch (Exception e) {
              mensajeSw = "swal('El mensage' , ' No fue enviado  ', 'error')";
        }
           PrimeFaces.current().executeScript(mensajeSw);
    }    
    
        
    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Datospersonales getDatospersonales() {
        return datospersonales;
    }

    public void setDatospersonales(Datospersonales datospersonales) {
        this.datospersonales = datospersonales;
    }

    public ArrayList<Usuario> getListaUsuarios() {
        return listaUsuarios;
    }

    public void setListaUsuarios(ArrayList<Usuario> listaUsuarios) {
        this.listaUsuarios = listaUsuarios;
    }

    

    
    
    
    
    
}
