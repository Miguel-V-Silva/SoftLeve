<%@page import="modelo.dao.usuario.UsuarioDAOImpl"%>
<%@page import="modelo.entidade.usuario.Usuario"%>
<%@page import="modelo.dao.desenvolvedor.DesenvolvedorDAOImpl"%>
<%@page import="modelo.entidade.desenvolvedor.Desenvolvedor"%>
<%@page import="modelo.dao.tarefa.TarefaDAOImpl"%>
<%@page import="modelo.entidade.tarefa.Tarefa"%>
<%@page import="modelo.dao.tipotarefa.TipoTarefaDAOImpl"%>
<%@page import="modelo.entidade.tipotarefa.TipoTarefa"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Listar Tarefas</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/estilos/home.css">
</head>
<body>
	<nav>
		<div class="nav-logo">
			<a
				href="<%=request.getContextPath()%>/paginas/desenvolvedor/home-adm.jsp">
				<img
				src="<%=request.getContextPath() %>/resources/imagens/home/logo.png">
			</a>
		</div>

		<ul class="nav-links">
			<li id="link1" class="link"><a href="<%=request.getContextPath() %>/paginas/administrador/home-adm.jsp">Tarefas</a></li>
			<li id="link2" class="link"><a href="#">Usuarios</a></li>
		</ul>
		<button class="btn">
			<a id="deslogar" href="deslogar-usuario">Deslogar</a>
		</button>
	</nav>
	<div>
		<div>
			<h1>Tarefas</h1>
			<input type="search" id="consulta-tarefa"
				onkeyup="filtrarTabelaEmail()" placeholder="Procure por Nome">
			<table id="tabela-tarefa">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Email</th>
						<th>Função</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody> 
					<%
						
						DesenvolvedorDAOImpl desenvolvedorDAO = new DesenvolvedorDAOImpl();
						UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();	
						for(Usuario usuario: usuarioDAO.recuperarUsuarios()){
							Desenvolvedor desenvolvedor = desenvolvedorDAO.recuperarDesenvolvedorPorIdUsaurio(usuario.getIdUsuario());
							%>
					<tr>
						<td><%=desenvolvedor.getNomeDesenvolvedor() %></td>
						<td><%=usuario.getEmail()%></td>
						<td><%=desenvolvedor.getFuncao() %></td>
						<td>
							<a href="<%=request.getContextPath()%>/paginas/desenvolvedor/editar-desenvolvedor.jsp?idUsuario=<%=usuario.getIdUsuario() %>">Editar</a>
						</td>
					</tr>

					<%
						}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<div id="modal" class="modal-overlay" onclick="closeModal(event)">
		<div class="modal-content" onclick="event.stopPropagation()">
			<div id="modal-body"></div>
		</div>
	</div>
	
<script src="<%=request.getContextPath()%>/resources/scripts/filtros.js"></script>
<script src="<%=request.getContextPath()%>/resources/scripts/home.js"></script>
</body>
</html>