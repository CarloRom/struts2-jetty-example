package org.demo.actions.beans;

import java.util.Date;

public class InvoiceBean {

    private String empresa;
    private String concepto;
    private Date fechaFactura;
    private String importeBruto;

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getConcepto() {
        return concepto;
    }

    public void setConcepto(String concepto) {
        this.concepto = concepto;
    }

    public Date getFechaFactura() {
        return fechaFactura;
    }

    public void setFechaFactura(Date fechaFactura) {
        this.fechaFactura = fechaFactura;
    }

    public String getImporteBruto() {
        return importeBruto;
    }

    public void setImporteBruto(String importeBruto) {
        this.importeBruto = importeBruto;
    }
}

