
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

<b>IMC = <%out.print(imc); %></b>

</body>
</html>