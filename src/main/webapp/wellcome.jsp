<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>

</head>

<body>
    <h1>Resumen de factura:</h1>


    <h3><s:text name="form.empresa.message"/> <s:property value="invoiceBean.empresa"/></h3>
    <h3><s:text name="form.concepto.message"/> <s:property value="invoiceBean.concepto"/></h3>
    <h3><s:text name="form.fechaFactura.message"/> <s:property value="invoiceBean.fechaFactura"/></h3>
    <h3><s:text name="form.importeBruto.message"/> <s:property value="invoiceBean.importeBruto"/></h3>
    <h3><s:text name="form.importeIVA.message"/> <s:property value="invoiceBean.importeBruto * 1.21"/></h3>
</body>
</html>