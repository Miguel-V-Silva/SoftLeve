<%@page import="modelo.entidade.desenvolvedor.Desenvolvedor"%>
<%@page import="modelo.dao.desenvolvedor.DesenvolvedorDAOImpl"%>
<%@page import="modelo.entidade.usuario.Usuario"%>
<%@page import="modelo.dao.usuario.UsuarioDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<%

	Long idUsuario = Long.parseLong(request.getParameter("idUsuario"));

	UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();
	Usuario usuario = usuarioDAO.recuperarUsuarioPorId(idUsuario);
	
	DesenvolvedorDAOImpl desenvolvedorDAO = new DesenvolvedorDAOImpl();
	Desenvolvedor desenvolvedor = desenvolvedorDAO.recuperarDesenvolvedorPorIdUsaurio(usuario.getIdUsuario());

%>
	
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Editor de Usuário</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/estilos/login.css">
</head>
<body>
	<div class="login-container">
		<h2>Editar de Usuário</h2>
		<form id="form-cadastro" action="editar-desenvolvedor" method="post">
			<div class="input-field">
				<input type="text" id="nome" name="nome" placeholder="Digite seu nome" value="<%=desenvolvedor.getNomeDesenvolvedor() %>" required>
			</div>
			<div class="input-field">
				<input type="email" id="email" name="email" placeholder="Digite seu email" value="<%=usuario.getEmail() %>" required>
			</div>
			<div class="input-field">
				<input type="password" id="senha" name="senha" placeholder="Digite sua senha" value="<%=usuario.getSenha() %>" required>
			</div>
			<div class="input-field">
				<input type="password" id="senha-confirm" name="senha-confirm" placeholder="Confirme sua senha" value="<%=usuario.getSenha() %>" required>
			</div>
			<div class="input-field">
				<input type="text" id="cpf" name="cpf" required maxlength="14" value="<%=desenvolvedor.getCpf() %>" placeholder="000.000.000-00">
			</div>
			<div class="input-field">
				<label for="funcao">Função:</label>
				<select id="funcao" name="funcao" required>
					<option value="BACK_END">Back-End</option>
					<option value="FRONT_END">Front-End</option>
					<option value="BANCO_DE_DADOS">Banco de Dados</option>
					<option value="FULL_STACK">Full Stack</option>
				</select>
			</div>
			<button type="submit" class="button">Editar</button>
		</form>
	</div>
<script src="<%=request.getContextPath()%>/resources/scripts/login.js"></script>
<script src="<%=request.getContextPath()%>/resources/scripts/home.js"></script>

</body>
</html>
