
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Calculo IMC</title>
</head>
<body>

<h1>Calculo de Indice de Massa Corporea</h1>

<form>
	Digite seu peso (kg): <input name="peso"> <br>
	Digite sua altura (m): <input name="altura"> <br>
	
	<%
	float peso = request.Parameter("peso");
	float altura = request.Parameter("altura");
	float imc = peso*peso / altura;	
	%>
</form>

<b>IMC = <%out.print(imc); %></b><br>
<%if (imc<17){
	out.print("Muito abaixo do peso!");
}else if(imc>=17&&imc<=18,49){
	out.print("Abaixo do peso!");
}else if(imc>=18,5&&imc<=24,99){
	out.print("Peso normal!");
}else if(imc>=25&&imc<=29,99){
	out.print("Acima do peso!");
}else if(imc>=30&&imc<=34,99){
	out.print("Obesidade nivel I!");
}else if(imc>=35&&imc<=39,99){
	out.print("Obesidade nivel II!");
}else if{
	out.print("Obesidade mórbida!");
} %>

</body>
</html>