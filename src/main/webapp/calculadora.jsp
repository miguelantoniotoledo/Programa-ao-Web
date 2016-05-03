<html>
<head>
<title>Calculadora</title>
</head>
<body>
<h1>Calculadora</h1>

<form>
	Operador 1: <input name="operador1">
	<br>
	Operação: <input name="operacao">
	<br>
	Operador 2: <input name="operador2">
	<br>
	<button>Calcular</button>

<%
	String operador1Str = request.getParameter("operador1");
	//operador1Str = operador1Str == null ? "O" : operador1Str; //esse trecho eh equivalente a um if
	if(operador1Str ==null){
		operador1Str="0";
	}
	int operador1Int = Integer.parseInt(operador1Str);
	
	//Operacao 
	String operacaoStr= request.getParameter("operacao");
	
	//Operador 2
	String operador2Str = request.getParameter("operador2");
	if(operador2Str ==null){
		operador2Str="0";
	}
	int operador2Int = Integer.parseInt(operador2Str);
	
	//Calculo
	int resultado = 0;
	if(operacaoStr.equals("+")){
		resultado = operador1Int + operador2Int;
	} else if (operacaoStr.equals("-")){
		resultado = operador1Int - operador2Int;
	}

%>


	</form> 

<b>Resultado: <%out.print(resultado); %></b>


	</body>
</html>
