<%@page import="modelo.entidade.usuario.Usuario"%>
<%@page import="modelo.dao.usuario.UsuarioDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela de Login</title>
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
        }
        .container {
            width: 300px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: center;
        }
        .container h2 {
            margin-bottom: 20px;
        }
        .container input[type="email"],
        .container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .container button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 4px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        .container button:hover {
            background-color: #45a049;
        }
        .container .register {
            margin-top: 15px;
            font-size: 14px;
        }
        .container .register a {
            color: #4CAF50;
            text-decoration: none;
        }
        .container .register a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Login</h2>
    <form action="logar-usuario" method="post">
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="senha" placeholder="Senha" required>
        <button type="submit">Entrar</button>
    </form>
    <div class="register">
        <p>Não tem uma conta? <a href="cadastrar-desenvolvedor">Cadastre-se</a></p>
        <%
        	UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();
        	String emailSessao = (String) session.getAttribute("emailSessao");
        	
        	for(Usuario usuario : usuarioDAO.recuperarUsuarios()){
        		if(usuario.getEmail().equals(emailSessao) && usuario.isBloqueado()){
        			%>
        			<p>Conta Bloqueada <a href="redefinir-senha">Resetar Senha</a></p>
        			<% 
        		}
        	}
        	
        %>
    </div>
</div>

</body>
</html>
