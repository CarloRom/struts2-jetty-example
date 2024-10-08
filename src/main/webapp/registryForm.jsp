<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<!DOCTYPE html>
<html>
<head>
  <title><s:text name="hello.message"/></title>
  <s:head/>
  <sx:head/>
</head>

<body>



<s:form theme="simple" id="itemAdd" name="itemAdd" action="invoice" method="post" validate="true">
  <h1><s:text name="form.tittle.message"/></h1>
  <table>
  <tr>
      <td class="evenRow">
        <s:fielderror fieldName = "invoiceBean.empresa" />
        <s:text name="form.empresa.message"/>
        <s:textfield id="empresa" name="invoiceBean.empresa"/>
      </td>
    </tr>
  <tr>
      <td class="evenRow">
      <s:fielderror fieldName = "invoiceBean.concepto" />
        <s:text name="form.concepto.message"/>
        <s:textfield id="concepto" name="invoiceBean.concepto"/>
      </td>
    </tr>
  <tr>
    <td class="evenRow">
    <s:fielderror fieldName = "invoiceBean.fechaFactura" />
       <s:text name="form.fechaFactura.message"/>
       <sx:datetimepicker id="fechaFactura" name="invoiceBean.fechaFactura" />
    </td>

  </tr>
  <tr>
      <td class="evenRow">
      <s:fielderror fieldName = "invoiceBean.importeBruto" />
         <s:text name="form.importeBruto.message"/>
         <s:textfield id="importeBruto" name="invoiceBean.importeBruto" />
      </td>

    </tr>
  <tr>
    <td class="evenRow">
        <s:submit align="left" value="Enviar"/>
    </td>
  </tr>
  </table>
</s:form>

</body>
</html>
