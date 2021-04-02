/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.alvarez.entyty;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author cafu1
 */
@Entity
@Table(name = "datospersonales")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Datospersonales.findAll", query = "SELECT d FROM Datospersonales d")
    , @NamedQuery(name = "Datospersonales.findByDatosid", query = "SELECT d FROM Datospersonales d WHERE d.datosid = :datosid")
    , @NamedQuery(name = "Datospersonales.findByNombre", query = "SELECT d FROM Datospersonales d WHERE d.nombre = :nombre")
    , @NamedQuery(name = "Datospersonales.findByApellido", query = "SELECT d FROM Datospersonales d WHERE d.apellido = :apellido")
    , @NamedQuery(name = "Datospersonales.findByTipodocumento", query = "SELECT d FROM Datospersonales d WHERE d.tipodocumento = :tipodocumento")
    , @NamedQuery(name = "Datospersonales.findByNumerodocumento", query = "SELECT d FROM Datospersonales d WHERE d.numerodocumento = :numerodocumento")
    , @NamedQuery(name = "Datospersonales.findByTelefono", query = "SELECT d FROM Datospersonales d WHERE d.telefono = :telefono")})
public class Datospersonales implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Datos_id")
    private Integer datosid;
    @Size(max = 20)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 20)
    @Column(name = "Apellido")
    private String apellido;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Tipodocumento")
    private String tipodocumento;
    @Column(name = "Numerodocumento")
    private Integer numerodocumento;
    @Column(name = "Telefono")
    private Integer telefono;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "datosid", fetch = FetchType.LAZY)
    private Collection<Usuario> usuarioCollection;
    @OneToMany(mappedBy = "datosid", fetch = FetchType.LAZY)
    private Collection<Vehiculo> vehiculoCollection;

    public Datospersonales() {
    }

    public Datospersonales(Integer datosid) {
        this.datosid = datosid;
    }

    public Datospersonales(Integer datosid, String tipodocumento) {
        this.datosid = datosid;
        this.tipodocumento = tipodocumento;
    }

    public Integer getDatosid() {
        return datosid;
    }

    public void setDatosid(Integer datosid) {
        this.datosid = datosid;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTipodocumento() {
        return tipodocumento;
    }

    public void setTipodocumento(String tipodocumento) {
        this.tipodocumento = tipodocumento;
    }

    public Integer getNumerodocumento() {
        return numerodocumento;
    }

    public void setNumerodocumento(Integer numerodocumento) {
        this.numerodocumento = numerodocumento;
    }

    public Integer getTelefono() {
        return telefono;
    }

    public void setTelefono(Integer telefono) {
        this.telefono = telefono;
    }

    @XmlTransient
    public Collection<Usuario> getUsuarioCollection() {
        return usuarioCollection;
    }

    public void setUsuarioCollection(Collection<Usuario> usuarioCollection) {
        this.usuarioCollection = usuarioCollection;
    }

    @XmlTransient
    public Collection<Vehiculo> getVehiculoCollection() {
        return vehiculoCollection;
    }

    public void setVehiculoCollection(Collection<Vehiculo> vehiculoCollection) {
        this.vehiculoCollection = vehiculoCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (datosid != null ? datosid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Datospersonales)) {
            return false;
        }
        Datospersonales other = (Datospersonales) object;
        if ((this.datosid == null && other.datosid != null) || (this.datosid != null && !this.datosid.equals(other.datosid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.alvarez.entyty.Datospersonales[ datosid=" + datosid + " ]";
    }
    
}
