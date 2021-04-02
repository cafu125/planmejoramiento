/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.alvarez.entyty;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author cafu1
 */
@Entity
@Table(name = "vehiculo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Vehiculo.findAll", query = "SELECT v FROM Vehiculo v")
    , @NamedQuery(name = "Vehiculo.findByVehiculoid", query = "SELECT v FROM Vehiculo v WHERE v.vehiculoid = :vehiculoid")
    , @NamedQuery(name = "Vehiculo.findByVehiculoPlaca", query = "SELECT v FROM Vehiculo v WHERE v.vehiculoPlaca = :vehiculoPlaca")
    , @NamedQuery(name = "Vehiculo.findByVehiculomodelo", query = "SELECT v FROM Vehiculo v WHERE v.vehiculomodelo = :vehiculomodelo")
    , @NamedQuery(name = "Vehiculo.findByVehiculocolor", query = "SELECT v FROM Vehiculo v WHERE v.vehiculocolor = :vehiculocolor")
    , @NamedQuery(name = "Vehiculo.findByVehiculomarca", query = "SELECT v FROM Vehiculo v WHERE v.vehiculomarca = :vehiculomarca")
    , @NamedQuery(name = "Vehiculo.findByVehiculoestado", query = "SELECT v FROM Vehiculo v WHERE v.vehiculoestado = :vehiculoestado")
    , @NamedQuery(name = "Vehiculo.findByVehiculoprecio", query = "SELECT v FROM Vehiculo v WHERE v.vehiculoprecio = :vehiculoprecio")})
public class Vehiculo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Vehiculo_id")
    private Integer vehiculoid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "vehiculo_placa")
    private String vehiculoPlaca;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Vehiculo_modelo")
    private int vehiculomodelo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Vehiculo_color")
    private String vehiculocolor;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Vehiculo_marca")
    private String vehiculomarca;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Vehiculo_estado")
    private String vehiculoestado;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Vehiculo_precio")
    private int vehiculoprecio;
    @JoinColumn(name = "Datos_id", referencedColumnName = "Datos_id")
    @ManyToOne(fetch = FetchType.LAZY)
    private Datospersonales datosid;
    @JoinColumn(name = "Categoria_id", referencedColumnName = "Categoria_id")
    @ManyToOne(cascade = CascadeType.PERSIST)
    private Categorias categoriaid;

    public Vehiculo() {
    }

    public Vehiculo(Integer vehiculoid) {
        this.vehiculoid = vehiculoid;
    }

    public Vehiculo(Integer vehiculoid, String vehiculoPlaca, int vehiculomodelo, String vehiculocolor, String vehiculomarca, String vehiculoestado, int vehiculoprecio) {
        this.vehiculoid = vehiculoid;
        this.vehiculoPlaca = vehiculoPlaca;
        this.vehiculomodelo = vehiculomodelo;
        this.vehiculocolor = vehiculocolor;
        this.vehiculomarca = vehiculomarca;
        this.vehiculoestado = vehiculoestado;
        this.vehiculoprecio = vehiculoprecio;
    }

    public Integer getVehiculoid() {
        return vehiculoid;
    }

    public void setVehiculoid(Integer vehiculoid) {
        this.vehiculoid = vehiculoid;
    }

    public String getVehiculoPlaca() {
        return vehiculoPlaca;
    }

    public void setVehiculoPlaca(String vehiculoPlaca) {
        this.vehiculoPlaca = vehiculoPlaca;
    }

    public int getVehiculomodelo() {
        return vehiculomodelo;
    }

    public void setVehiculomodelo(int vehiculomodelo) {
        this.vehiculomodelo = vehiculomodelo;
    }

    public String getVehiculocolor() {
        return vehiculocolor;
    }

    public void setVehiculocolor(String vehiculocolor) {
        this.vehiculocolor = vehiculocolor;
    }

    public String getVehiculomarca() {
        return vehiculomarca;
    }

    public void setVehiculomarca(String vehiculomarca) {
        this.vehiculomarca = vehiculomarca;
    }

    public String getVehiculoestado() {
        return vehiculoestado;
    }

    public void setVehiculoestado(String vehiculoestado) {
        this.vehiculoestado = vehiculoestado;
    }

    public int getVehiculoprecio() {
        return vehiculoprecio;
    }

    public void setVehiculoprecio(int vehiculoprecio) {
        this.vehiculoprecio = vehiculoprecio;
    }

    public Datospersonales getDatosid() {
        return datosid;
    }

    public void setDatosid(Datospersonales datosid) {
        this.datosid = datosid;
    }

    public Categorias getCategoriaid() {
        return categoriaid;
    }

    public void setCategoriaid(Categorias categoriaid) {
        this.categoriaid = categoriaid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vehiculoid != null ? vehiculoid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Vehiculo)) {
            return false;
        }
        Vehiculo other = (Vehiculo) object;
        if ((this.vehiculoid == null && other.vehiculoid != null) || (this.vehiculoid != null && !this.vehiculoid.equals(other.vehiculoid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.alvarez.entyty.Vehiculo[ vehiculoid=" + vehiculoid + " ]";
    }
    
}
