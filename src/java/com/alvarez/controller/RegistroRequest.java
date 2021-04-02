package com.alvarez.controller;

import com.alvarez.entyty.Datospersonales;
import com.alvarez.entyty.Usuario;
import com.alvarez.extras.Email;
import com.alvarez.facade.UsuarioFacadeLocal;
import java.io.Serializable;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import org.primefaces.PrimeFaces;

/**
 *
 * @author carlos
 */
@Named(value = "registroRequest")
@RequestScoped
public class RegistroRequest implements Serializable{
 @EJB
 UsuarioFacadeLocal usuarioEJB;
    
 
    private Datospersonales datospersonales;
    private Usuario usuario;
    private String correoRecuperar="";
    
    public RegistroRequest() {
    }
    
    @PostConstruct
    public void init(){
    datospersonales = new Datospersonales();
    usuario = new Usuario();
    }

    
    public void registrar(){
        String mensajeSw = "";
             try{
            this.usuario.setDatosid(datospersonales);
             usuarioEJB.create(usuario);
             mensajeSw = "swal('El USUARIO' , ' FUE REGISTRADO CON EXITO  ', 'AVISO')";
        }catch(Exception e){
          mensajeSw = "swal('EL USUARIO ' , ' YA SE ENCUENTRA REGISTRADO  ', 'error')";
        }
        PrimeFaces.current().executeScript(mensajeSw);
    }
    
    
    public void recuperarClave(){
        Usuario usuRecuperar = new Usuario();
        String mensajeSw = "";
        try {
             usuRecuperar = usuarioEJB.recuperarClave(correoRecuperar);
             if(usuRecuperar.getCorreo()== null){
                  mensajeSw = "swal('El correo' , ' No se encuentra registrado  ', 'error')";
             }else{
                 
                    Email.sendClaves(usuRecuperar.getCorreo(), 
                                      usuRecuperar.getDatosid().getNombre(),
                                      usuRecuperar.getCorreo(),
                                      usuRecuperar.getContraseña());
                    
                  mensajeSw = "swal('La clave es enviada' , ' A su correo electronico  ', 'success')";
             }
        } catch (Exception e) {
            mensajeSw = "swal('El correo' , ' No se encuentra registrado  ', 'error')";
        }
             PrimeFaces.current().executeScript(mensajeSw);
    }
    
        
     public void actualizarMisDatos() {
        String mensajeSw = "";
        try {
            usuarioEJB.edit(usuario);
            mensajeSw = "swal('Se actualizaron ' , 'Sus datos exitosamente  ', 'success')";
        } catch (Exception e) {
            mensajeSw = "swal('No se puede' , ' Actualizar mis datos  ', 'error')";
        }
        PrimeFaces.current().executeScript(mensajeSw);
    }
    
    
    public Datospersonales getDatospersonales() {
        return datospersonales;
    }

    public void setDatospersonales(Datospersonales datospersonales) {
        this.datospersonales = datospersonales;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getCorreoRecuperar() {
        return correoRecuperar;
    }

    public void setCorreoRecuperar(String correoRecuperar) {
        this.correoRecuperar = correoRecuperar;
    }
    
    
    
    
    
    
}
