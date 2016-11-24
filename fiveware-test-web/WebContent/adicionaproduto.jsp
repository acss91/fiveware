<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
fieldset{
margin: 1em 0;
padding: 1em;
border: 1px solid #ccc;
background: #f8f8f8;
}

legend{
font-weight:bold;
}

label{
display:block;
}

input{
width: 200px;
}
</style>
<script type="text/javascript">
//function cheque(){
//var dinheiro = document.getElementById("dinheiro").checked;
//var cartao = document.getElementById("cartao").checked;
//alert("ok");
//if (dinheiro){
//	document.getElementById("cartao").checked=false;	
//}	
//if (cartao && dinheiro){
//	document.getElementById("dinheiro").checked=false;		
//}	
//if (bebe){
//	document.getElementById("churrasco").checked=false;	
//	document.getElementById("praia").checked=false;	
//}	

//}
function loadDoc() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	   if (this.readyState == 4 && this.status == 200) {
	     document.getElementById("demo").innerHTML = this.responseText;
	     
	 
	    }
	  };
	  
	  
	  var quantidade = 0;
	 
	    produto = document.getElementById("prod").value;
	   if(produto==""){
		alert("digite algo em produto");
		return false;
	   }
		   
		 var item = document.getElementById("ite").value;
		 if(item==0){
			 alert("selecione um item do Genero");
				return false;	 
		 }
		 
		  radios = document.getElementsByName("quantidade");
		      for (var i = 0; i < radios.length; i++) {
       if (radios[i].checked) {
        quantidade = radios[i].value;
        }
    }
	if (quantidade==0){	 	      
	alert("escolha alguma quantidade");
	return false;
	}

	       var pagamento=0;
		  checks = document.getElementsByName("pagamento");
	      for (var i = 0; i < checks.length; i++) {
          if (checks[i].checked) {
          pagamento = checks[i].value;
          }
         }
         if (pagamento==0){	 	      
         alert("escolha alguma uma forma de pagamento");
         return false;
         }
		  
		  
		  
		  var preco = document.getElementById("prec").value;
		  if(preco==""||isNaN(preco)){
			  alert("digite um numero inteiro em preco");
		  }
	 
	  xhttp.open("POST", "add.html?produto="+produto+"&item="+item+"&quantidade="+quantidade+"&pagamento="+pagamento+"&preco="+preco, true);
	  xhttp.send();
	  alert("Cadastrado com Sucesso");
	  window.location.href = "index.html"
}

</script>
</head>
<body>
<fieldset>
<form action="add.html" method="POST">
<label>Insira o Novo Produto</label>
<p>
<label>Produto</label>
<input type="text" name = "produto" id="prod">
</p>
<p>
<label>Genero</label>
<select size="1" name="item" id="ite">

<option selected value="0">Selecione!</option>

<option value="alimenticios">alimenticios</option>

<option value="higiene">higiene</option>

<option value="horti-fruti">horti-fruti</option>

<option value="para o lar">para o lar</option>

<option value="outros">outros</option>

</select>

<p>
<label>Quantidade</label>
<input type="radio" name = "quantidade" id="quant" value="1">1
<input type="radio" name = "quantidade" value="2" id="quant">2
<input type="radio" name = "quantidade" value="3" id="quant">3
</p>
<p>
<label>Pagamento</label>
DINHEIRO<input type="checkbox" name="pagamento" id="dinheiro" value="dinheiro" onclick="cheque()"><br>
CARTÃO  <input type="checkbox" name="pagamento"  id="cartao" value="cartao"   onclick="cheque()">
</p>
<p>
<label>Preco</label>
<input type="text" name = "preco" id="prec">
</p>
<p>
<input type = "button" value= "ok" onclick="loadDoc()">
</p>
</form>
</fieldset>

</body>
</html>