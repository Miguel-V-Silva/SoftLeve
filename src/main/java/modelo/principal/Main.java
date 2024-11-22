package modelo.principal;

import modelo.dao.desenvolvedor.DesenvolvedorDAOImpl;
import modelo.dao.usuario.UsuarioDAOImpl;
import modelo.entidade.desenvolvedor.Desenvolvedor;
import modelo.entidade.usuario.Usuario;
import modelo.enumeracao.funcaodesenvolvedor.FuncaoDesenvolvedor;

public class Main {

	public static void main(String[] args) {

		UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();
		Usuario usuario = new Usuario();
		
		usuario.setEmail("email@email");
		usuario.setSenha("ssss");
		usuarioDAO.inserirUsuario(usuario);
		
		DesenvolvedorDAOImpl desenvolvedorDAO = new DesenvolvedorDAOImpl();
		Desenvolvedor desenvolvedor = new Desenvolvedor();
		
		desenvolvedor.setCpf("1223131");
		desenvolvedor.setFuncao(FuncaoDesenvolvedor.BANCO_DE_DADOS);
		desenvolvedor.setNomeDesenvolvedor("Nome");
		desenvolvedor.setUsuario(usuario);
		
		desenvolvedorDAO.inserirDesenvolvedor(desenvolvedor);
		
	}
}
