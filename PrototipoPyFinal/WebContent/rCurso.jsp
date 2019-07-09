<form action="${pageContext.request.contextPath}/operation" method="post">

 <fieldset style="border: 3px dashed #000099;width:80%;background:#FF8000;color:#ffffff; width:400px; height:300px">
  <legend style="background:white;border: 3px dashed #000099;color:#000; padding: 10px;font-family:arial; font-size:19px">Registrar Curso</legend>
  <table style="width:300px; margin-top:20px">
  <tr>
  <th> <label style="font-family:arial;color:#fff">Código de Curso: </label></th>
  <td>  <input name='nombre' type='text' tabindex='1' required></td>
  </tr>
  <tr>
  <th> <label style="font-family:arial;color:#fff">Número de Créditos: </label></th>
  <td>  <input name='apellidos' type='text' tabindex='2' required></td>
  </tr>
  <tr>
  <th> <label style="font-family:arial; color:#fff">Obligatorio: </label></th>
  <td>  <input name='apellidos' type='text' tabindex='2' required></td>
  </tr>
   <td colspan="2" align="center">
   <input type="hidden" name="form" value="addUserOperation">
  <input type="submit" value="GRABAR" style="border: 3px dashed #000099;background: yellow; color: black; padding: 10px; margin-top:30px;margin-left:50px; font-family: arial; font-weight:800" />
  </td>
  </table>
 
 </fieldset>

</form>