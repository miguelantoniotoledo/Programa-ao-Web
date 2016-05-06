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
	
<!-- Essa eh uma funcao que simplifica pegar os parametros
<%! public String valor(HttpServletRequest req, String param, String padrao){
	
	String result = req.getParameter(param);
	if(result==null){
		result = padrao;
}
	return result;
	}

public int toInt(HttpServletRequest req, String param, String padrao){
	return Integer.parseInt(valor(req,param,padrao));
}

%>

int operador1Int = toInt(request, "operador1","0");
String operacaoStr = valor(request, "operacao","");
int operador2Int= toInt(request,"operador2","0");

 -->

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
	
	//o calculo foi colocado na classe java
	
	
	
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
