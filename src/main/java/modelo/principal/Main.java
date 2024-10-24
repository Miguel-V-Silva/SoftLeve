package modelo.principal;

import java.time.LocalDate;

import modelo.dao.desenvolvedor.DesenvolvedorDAOImpl;
import modelo.dao.tarefa.TarefaDAOImpl;
import modelo.dao.tipotarefa.TipoTarefaDAOImpl;
import modelo.dao.usuario.UsuarioDAOImpl;
import modelo.entidade.desenvolvedor.Desenvolvedor;
import modelo.entidade.tarefa.Tarefa;
import modelo.entidade.tipotarefa.TipoTarefa;
import modelo.entidade.usuario.Usuario;
import modelo.enumeracao.categoria.Categoria;
import modelo.enumeracao.funcaodesenvolvedor.FuncaoDesenvolvedor;

public class Main {

	public static void main(String[] args) {
		
		UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();
		Usuario usuario = new Usuario();
		usuario.setEmail("pedro.jose@gmail.com");
		usuario.setSenha("12312");
		usuario.setAdministrador(false);
		usuario.setBloqueado(false);
		usuario.setInativo(false);
		
		usuarioDAO.inserirUsuario(usuario);
		
		
		DesenvolvedorDAOImpl desenvolvedorDAO = new DesenvolvedorDAOImpl();
		Desenvolvedor desenvolvedor = new Desenvolvedor();
		
		desenvolvedor.setNomeDesenvolvedor("Pedro Henrique");
		desenvolvedor.setFuncao(null);
		desenvolvedor.setFuncao(FuncaoDesenvolvedor.BACK_END);
		desenvolvedor.setUsuario(usuario);
		desenvolvedorDAO.inserirDesenvolvedor(desenvolvedor);
		
		TarefaDAOImpl tarefaDAO = new TarefaDAOImpl();
		Tarefa tarefa = new Tarefa();
		
		tarefa.setNomeTarefa("Fazer o Back End");
		tarefa.setDescricao("Fazer o Back end da estatium");
		tarefa.setDataPrazo(LocalDate.of(2024, 11, 22));
		tarefa.setDataCriacao(LocalDate.of(2024, 10, 24));
		tarefa.setDataConclusao(null);
		
		tarefaDAO.inserirTarefa(tarefa);
		
		tarefa.getDesenvolvedores().add(desenvolvedor);
		tarefaDAO.atualizarTarefa(tarefa);
		
		desenvolvedor.getTarefas().add(tarefa);
		desenvolvedorDAO.atualizarDesenvolvedor(desenvolvedor);
		
		TipoTarefaDAOImpl tipoTarefaDAO = new TipoTarefaDAOImpl();
		TipoTarefa tipoTarefa = new TipoTarefa();
		
		tipoTarefa.setTarefa(tarefa);
		tipoTarefa.setPrioridade(3);
		tipoTarefa.setCategoria(Categoria.TRABALHO);
		
		tipoTarefaDAO.inserirTipoTarefa(tipoTarefa);
	}

}
