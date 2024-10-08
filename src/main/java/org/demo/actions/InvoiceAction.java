package org.demo.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.demo.actions.beans.InvoiceBean;

import java.util.Date;

public class InvoiceAction extends ActionSupport  {

    InvoiceBean invoiceBean;

    @Override
    public String execute() throws Exception {
        System.out.println("execute!!");
        return SUCCESS;
    }

    public InvoiceBean getInvoiceBean() {
        return invoiceBean;
    }

    public void setInvoiceBean(InvoiceBean invoiceBean) {
        this.invoiceBean = invoiceBean;
    }
    @Override
    public void validate() {
        if (invoiceBean.getEmpresa().isEmpty()) {
            addFieldError("invoiceBean.empresa", "El campo empresa es obligatorio.");
        }
        if (invoiceBean.getConcepto().isEmpty()) {
            addFieldError("invoiceBean.concepto", "El campo concepto es obligatorio.");
        }

        if(invoiceBean.getFechaFactura() == null)
        {
            addFieldError("invoiceBean.fechaFactura", "Debe rellenar la fecha incial.");
        }


        if(invoiceBean.getFechaFactura() != null && invoiceBean.getFechaFactura().after(new Date()))
        {
            addFieldError("invoiceBean.fechaFactura", "La fecha de facturación no puede ser mayor a la fecha actual.");
        }

        if(invoiceBean.getImporteBruto() == null || !isNumeric(invoiceBean.getImporteBruto().toString())) {
            addFieldError("invoiceBean.importeBruto", "El importe bruto no puede estar vacío y debe ser un número válido.");
        }
    }

    private boolean isNumeric(String str) {
        try {
            Double.parseDouble(str);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }

}
