<%@include file="include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Proyecto Semana 111</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/operation" method="post" style="margin:90px">

 <fieldset style="border: 3px dashed #000099;width:80%;background:#FF8000;color:#ffffff; width:400px; height:300px">
  <legend style="background:white;border: 3px dashed #000099;color:#000; padding: 10px;font-family:arial; font-size:19px">Registrar alumno</legend>
  <table style="width:300px; margin-top:20px">
  <tr>
  <th> <label style="font-family:arial">Nombre: </label></th>
  <td>  <input name='nombre' type='text' tabindex='1' required></td>
  </tr>
  <tr>
  <th> <label style="font-family:arial">Apellidos: </label></th>
  <td>  <input name='apellidos' type='text' tabindex='2' required></td>
  </tr>
  <tr>
  <th> <label style="font-family:arial">Edad: </label></th>
  <td>  <input name='edad' type='text' tabindex='3' required></td>
  </tr>
  <th> <label style="font-family:arial">Ciclo: </label></th>
  <td>  <input name='ciclo' type='text' tabindex='4' required></td>
  <tr>
  <th> <label style="font-family:arial">Año de ingreso: </label></th>
  <td>  <input name='year' type='text' tabindex='5' required></td>
  </tr>
   <td colspan="2" align="center">
   <input type="hidden" name="form" value="addUserOperation">
  <input type="submit" value="GRABAR" style="border: 3px dashed #000099;background: yellow; color: black; padding: 10px; margin-top:30px;margin-left:50px; font-family: arial; font-weight:800" />
  </td>
  </table>
 
 </fieldset>

</form>

</body>
</html>

<%@include file="include/footer.jsp" %>