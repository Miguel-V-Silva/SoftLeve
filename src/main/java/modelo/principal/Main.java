package modelo.principal;


import modelo.dao.desenvolvedor.DesenvolvedorDAOImpl;
import modelo.dao.usuario.UsuarioDAOImpl;
import modelo.entidade.desenvolvedor.Desenvolvedor;
import modelo.entidade.usuario.Usuario;

public class Main {

	public static void main(String[] args) {
		UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();
		
		DesenvolvedorDAOImpl desenvolvedorDAO = new DesenvolvedorDAOImpl();
		
		for (Usuario usuario : usuarioDAO.recuperarUsuarios()) {
			System.out.println("bloqueado: "+usuario.isBloqueado());
		}
		
		
		
	}

}
