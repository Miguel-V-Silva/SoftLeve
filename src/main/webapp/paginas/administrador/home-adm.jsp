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
			<li id="link1" class="link"><a href="#">Tarefas</a></li>
			<li id="link2" class="link"><a href="<%=request.getContextPath() %>/paginas/administrador/lista-usuarios-adm.jsp">Usuarios</a></li>
		</ul>
		<button class="btn">
			<a id="deslogar" href="deslogar-usuario">Deslogar</a>
		</button>
	</nav>
	<div>
		<div>
			<h1>Tarefas</h1>
			<input type="search" id="consulta-tarefa"
				onkeyup="filtrarTabelaEmail()" placeholder="Procure por Titulo">
			<table id="tabela-tarefa">
				<thead>
					<tr>
						<th>Titulo</th>
						<th>Descrição</th>
						<th>Status</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody> 
					<%
						TipoTarefaDAOImpl tipoTarefaDAO = new TipoTarefaDAOImpl();
						TarefaDAOImpl tarefaDAO = new TarefaDAOImpl();
						for(TipoTarefa tipoTarefa : tipoTarefaDAO.recuperarTipoTarefas()){
							Tarefa tarefa = tarefaDAO.recuperarTarefaPorIdUsaurio(tipoTarefa.getTarefa().getIdTarefa());
							
							%>
					<tr>
						<td><%=tarefa.getNomeTarefa() %></td>
						<td><%=tarefa.getDescricao() %></td>
						<td><%=tarefa.getStatus() %></td>
						<td>
							<a href="#" onclick="openEditarTarefa(<%= tipoTarefa.getIdTipoTarefa() %>)">Editar</a>
							<a href="deletar-tarefa?idTipoTarefa=<%=tipoTarefa.getIdTipoTarefa() %>">Deletar</a>
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

</body>
</html>