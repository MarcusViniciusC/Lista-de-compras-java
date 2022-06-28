<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dao.UsuarioDAO" %>
<%@page import="modelo.Produto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>alterar produto</title>


<style>
       
        body{
        font-size:14px;
          	font-family:Tahoma, sans-serif;
            position: absolute;
            top: 5vw;
            left: 36%;
            transform: translate(-50%, -50%);
            background-color:powderblue;
             transition: background 0.2s linear;
             /*color:#663399;*/
             color:rgb(2, 62, 102);
        }
        
        #botao.dark{
        	background-color:#663399;
        	color:#fff;
        }
        
        body.dark {
       background:#211a31;
        /*color:rgb(233, 147, 18);*/
        color:#2eaa70;
        }
        .checkbox {
        opacity: 0;
        position: absolute;
        }
        .label {
            background-color: black;
            border-radius: 50px;
            cursor: pointer;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            position: relative;
            height: 5px;
            width: 43px;
            transform: scale(1);
            
            }

            .label .ball {
            background-color: #fff;
            border-radius: 50%;
            position: absolute;
            top: 0px;
            left: 0px;
            height: 25px;
            width: 28px;
            transform: translateX(0px);
            transition: transform 0.2s linear;
            
            }

            .checkbox:checked + .label .ball {
            transform: translateX(35px);
            }

            .fa-moon {
                color: #18b3be;
            
            }

            .fa-sun {
                color: #f1c40f;
            }
            #tudo{
                box-shadow: 5px 5px 5px 5px rgba(0, 0, 0, 0.2);
            background-color: rgb(212, 142, 21);
            padding: 30px 60px 30px 60px;
            width: 22vw;
           border-radius: 20px;
           background-image:url(image/papel.jpg);
           
           background-size:100%;
         justify-content: space-around;
         position:fixed;
        }
        
        #titulo{
        	 font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        	 font-size:16px;
    text-align: center;
        }
        
        table{
    text-align: center;
    border: none;
    
}

#formulario{
    text-align: center;
}
.preencher{
    border:none;
    padding: 5px 10px 5px 10px;
    margin-bottom : 10px;
    outline: none;
    border-radius: 7px;
    background-color:#dcdcdc;
}
.botao{
    margin-top: 10px;
    border: none;
    padding: 5px 10px 5px 10px;
    outline: none;
    border-radius: 5px;
    color:#fff;
    background-color:#2e7daa;
}

.botao:hover{
    cursor: pointer;
   transform: scale(1.1);
   transition:0.5s;
}
#btn-dark{
	margin-bottom:15px;	
}
table{

}
tr{
		
}
th{

border:none;
border-right:3px;
}
td{

border:none;
}

    </style>


</head>
<body>

	<%
		Produto pdt = (Produto)session.getAttribute("produtoSelecionado");
	
	%>
	
	<div id="btn-dark">
        <input type="checkbox" class="checkbox" id="chk"/>
        <label class="label" for="chk">
            <i class="fas fa-moon"></i>
            <i class="fas fa-sun"></i>
            <div class="ball"></div>
        </label>
    </div>
	<div id="tudo">
	<div id="titulo">
			<h2>Lista de compras</h2>
		</div>
	<div id="formulario">
	<form action="AlterarProdutoServlet" method="post">
		<input type="hidden" name="id" id="id" value="<%=pdt.getId() %>"/>
		<input type="text" name="nome" id="nome" placeholder="<%=pdt.getNome() %>" maxlength="25" class="preencher" required /><br>
		<input type="number" min="1" name="quantidade" id="quantidade" placeholder="<%=pdt.getQuantidade() %>" class="preencher" required/><br>
		<input type="submit" value="alterar item"  class="botao"><br>
		<a href="index.jsp"><input type="button" value="voltar" class="botao"><br></a>
	</form><br>
	</div>
	</div>
	<script src="script.js"></script>
				<script src="https://kit.fontawesome.com/998c60ef77.js"
					crossorigin="anonymous"></script>
</body>
</html>