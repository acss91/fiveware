<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table{
border-collapse: collapse;
width: 50em;
border: 1px solid #666;

}

th, td{
padding: 0.1em 1em;
}

.odd{
background-color:#edf5ff;
}

tr:hover{
background-color:#3d80df;
color:#000;
}

a:link, a:visited{
text-decoration:none;
display:block;
color:#666;
}


tr:nth-child(odd){
background-color:#edf5ff;
}
</style>
 <script type="text/javascript">
      
function check(id) {
 
	checked = document.getElementById("check"+id).checked;
   var valor1 = document.getElementById(id).innerHTML;
    var valor2;
	if(checked){
 valor2 =document.getElementById("valor").innerHTML;	
		valor2=parseInt(valor2) + parseInt(valor1);	
	

	}else if(!checked){
		valor2 =document.getElementById("valor").innerHTML;	
	valor2=parseInt(valor2) - parseInt(valor1);	
	}
	
	
	  document.getElementById("valor").innerHTML=valor2;	

	  
	

}
      </script>
</head>
<body>
<table border="0">
<tr>
 
	<th></th>
	<th>PRODUTO</th>
	<th>ITEM</th>
	<th>QUANTIDADE</th>
	<th>PAGAMENTO</th>
	<th>PREÇO</th>

</tr>
<c:forEach items="${produtoList}" var="p">
	<tr class="odd">
		<th>${p.id}</th>
		<th> ${p.produto} </th>
		<th> ${p.item} </th>
		<th> ${p.quantidade} </th>
		<th> ${p.pagamento} </th>
		<th> ${p.preco} </th>   
	</tr>
</c:forEach>

</table>

<a href="index.jsp">Pagina Inicial</a>
</body>
</html>