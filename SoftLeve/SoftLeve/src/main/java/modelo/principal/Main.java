package modelo.principal;

import modelo.dao.desenvolvedor.DesenvolvedorDAOImpl;
import modelo.entidade.desenvolvedor.Desenvolvedor;

public class Main {

	public static void main(String[] args) {
		DesenvolvedorDAOImpl desenvolvedorDAO = new DesenvolvedorDAOImpl();
		Desenvolvedor desenvolvedor = new Desenvolvedor();
		
		desenvolvedor.setNomeDesenvolvedor("Pedro Henrique");
		desenvolvedor.setEmail("pedro@gmail.com");
		desenvolvedor.setAdministrador(false);
		desenvolvedor.setBloqueado(false);
		desenvolvedor.setFuncao(null);
		desenvolvedor.setInativo(false);
		desenvolvedor.setSenha("aaaa");
		desenvolvedor.setIdDesenvolvedor(1);
		
		desenvolvedorDAO.inserirDesenvolvedor(desenvolvedor);

	}

}
