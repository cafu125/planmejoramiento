package com.alvarez.controller;

import com.alvarez.entyty.Categorias;
import com.alvarez.entyty.Datospersonales;
import com.alvarez.entyty.Vehiculo;
import com.alvarez.facade.CategoriasFacadeLocal;
import com.alvarez.facade.DatospersonalesFacadeLocal;
import com.alvarez.facade.VehiculoFacadeLocal;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.primefaces.PrimeFaces;

/**
 *
 * @author carlos
 */
@Named(value = "regstroVehiculoRequest")
@RequestScoped
public class RegstroVehiculoRequest {

    @EJB
    VehiculoFacadeLocal vehiculoEJB;

    @EJB
    CategoriasFacadeLocal cateEJB;

    @EJB
    DatospersonalesFacadeLocal datosEJB;

    private Vehiculo objvehiculo;
    private Categorias categoria;
    private Datospersonales datospersonales;
     private Part archivoExcel;
    private List<Vehiculo> ListaVehiculo ;
    private List<Datospersonales> datos;
    private List<Categorias> ListaCategorias;
              
    public RegstroVehiculoRequest() {
    }

    @PostConstruct
    public void init() {
        objvehiculo = new Vehiculo();
        categoria = new Categorias();
        datospersonales = new Datospersonales();

        ListaVehiculo = vehiculoEJB.findAll();
        datos = datosEJB.findAll();
        ListaCategorias = cateEJB.findAll();
    }

    public void registrarVehiculo() {
        String mensajeSw = "";

        try {

            objvehiculo.setDatosid(datospersonales);
            this.objvehiculo.setCategoriaid(categoria);
            vehiculoEJB.create(objvehiculo);
            mensajeSw = "swal('Vehiculo registrado' , ' con exito ', 'success')";

        } catch (Exception e) {
            mensajeSw = "swal('El Vehiculo ' , ' ya se encuentra registrado  ', 'error')";
          }
        objvehiculo = new Vehiculo();
        ListaVehiculo = vehiculoEJB.findAll();
        
    PrimeFaces.current().executeScript(mensajeSw);
    }

    public void leer(Vehiculo leerVehi) {

        objvehiculo = leerVehi;
    }
  

    public void modificar(Vehiculo edirem) {
        String mensajeSw = "";
        try {

            vehiculoEJB.edit(edirem);
            mensajeSw = "swal('Vehiculo editado' , ' con exito ', 'success')";

        } catch (Exception e) {
            mensajeSw = "swal('El Vehiculo ' , ' no se puede modificar  ', 'error')";
              }
        objvehiculo = new Vehiculo();
        ListaVehiculo = vehiculoEJB.findAll();
       
              PrimeFaces.current().executeScript(mensajeSw);
    }

    public void eliminar(Vehiculo elirem) {
        String mensajeSw = " ";
        try {

            vehiculoEJB.remove(elirem);
            mensajeSw = "swal('Vehiculo eliminado' , ' con exito ', 'success')";
        } catch (Exception e) {
            mensajeSw = "swal('El Vehiculo ' , ' no se puede eliminar  ', 'error')";
                   }
        objvehiculo = new Vehiculo();
        ListaVehiculo = vehiculoEJB.findAll();
        
       PrimeFaces.current().executeScript(mensajeSw);
    }
    
     public void verReporte() throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        
        //Instancia hacia la clase reporteClientes        
        Reportes rVehiculo = new Reportes();
        
        FacesContext facesContext = FacesContext.getCurrentInstance();
        ServletContext servletContext = (ServletContext) facesContext.getExternalContext().getContext();
        String ruta = servletContext.getRealPath("reportes/Vehiculos.jasper");
       
        rVehiculo.getReporte(ruta);        
        FacesContext.getCurrentInstance().responseComplete();               
    }
    
   
      public void insertarXLS(List cellDataList) {
        try {
            int filasContador = 0;
            for (int i = 0; i < cellDataList.size(); i++) {
                List cellTemp = (List) cellDataList.get(i);
                Vehiculo newV = new Vehiculo();
                for (int j = 0; j < cellTemp.size(); j++) {
                    XSSFCell hssfCell = (XSSFCell) cellTemp.get(j);
                    switch (filasContador) {
                        case 0:
                            newV.setVehiculoPlaca(hssfCell.toString());
                            filasContador++;
                            break;
                        case 1:
                            newV.setVehiculocolor(hssfCell.toString());
                            filasContador++;
                            break;
                        
                        case 2:
                            newV.setVehiculoestado(hssfCell.toString());
                            filasContador++;
                            break;
                        case 3:
                            newV.setVehiculomarca(hssfCell.toString());
                            filasContador++;
                            break;
                        case 4:
                            newV.setVehiculomodelo((int) hssfCell.getNumericCellValue());
                            filasContador++;
                            break;
                        case 5:
                            Categorias nueva = cateEJB.find((int) Math.floor(hssfCell.getNumericCellValue()));
                            newV.setCategoriaid(nueva);
                            vehiculoEJB.create(newV);
                            filasContador = 0;
                            break;
                    }

                }
            }

        } catch (Exception e) {
        }
    }

    public void subeExcel() throws IOException {
        String mensajeSw = "";
        if (archivoExcel != null) {
            if (archivoExcel.getSize() < 4000000) {
                if ("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet".equals(archivoExcel.getContentType())) {
                    InputStream input = archivoExcel.getInputStream();
                    List cellData = new ArrayList();
                    try {
                        XSSFWorkbook workBook = new XSSFWorkbook(input);
                        XSSFSheet hssfSheet = workBook.getSheetAt(0);
                        Iterator rowIterator = hssfSheet.rowIterator();
                        rowIterator.next();

                        while (rowIterator.hasNext()) {
                            XSSFRow hssfRow = (XSSFRow) rowIterator.next();
                            Iterator iterator = hssfRow.cellIterator();
                            List cellTemp = new ArrayList();
                            while (iterator.hasNext()) {
                                XSSFCell hssfCell = (XSSFCell) iterator.next();
                                cellTemp.add(hssfCell);
                            }
                            cellData.add(cellTemp);
                        }
                        insertarXLS(cellData);
                    } catch (Exception e) {
                        PrimeFaces.current().executeScript("swal('Problemas ingresando el archivo' , 'error');");
                    }
                    ExternalContext context = FacesContext.getCurrentInstance().getExternalContext();
                    context.redirect("index.xhtml");
                } else {
                    mensajeSw = "swal('El archivo' , ' no es una XLSX ', 'error')";
                }
            } else {
                mensajeSw = "swal('El archivo' , ' es muy grande  ', 'error')";
            }
        } else {
            mensajeSw = "swal('No puede cargar ' , ' EL  archivo  ', 'error')";
        }

        PrimeFaces.current().executeScript(mensajeSw);
    }

    
    
   

   
    
    public Vehiculo getObjvehiculo() {
        return objvehiculo;
    }

    public void setObjvehiculo(Vehiculo objvehiculo) {
        this.objvehiculo = objvehiculo;
    }

    public Categorias getCategoria() {
        return categoria;
    }

    public void setCategoria(Categorias categoria) {
        this.categoria = categoria;
    }

    public Datospersonales getDatospersonales() {
        return datospersonales;
    }

    public void setDatospersonales(Datospersonales datospersonales) {
        this.datospersonales = datospersonales;
    }

    public List<Datospersonales> getDatos() {
        return datos;
    }

    public void setDatos(List<Datospersonales> datos) {
        this.datos = datos;
    }

    public List<Categorias> getListaCategorias() {
        return ListaCategorias;
    }

    public void setListaCategorias(List<Categorias> ListaCategorias) {
        this.ListaCategorias = ListaCategorias;
    }

    public List<Vehiculo> getListaVehiculo() {
        return ListaVehiculo;
    }

    public void setListaVehiculo(List<Vehiculo> ListaVehiculo) {
        this.ListaVehiculo = ListaVehiculo;
    }

    public Part getArchivoExcel() {
        return archivoExcel;
    }

    public void setArchivoExcel(Part archivoExcel) {
        this.archivoExcel = archivoExcel;
    }

    
}
