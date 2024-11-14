package modelo.principal;


import modelo.dao.usuario.UsuarioDAOImpl;
import modelo.entidade.usuario.Usuario;


public class Main {

	public static void main(String[] args) {
		UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();
		Usuario usuario = new Usuario();
		
		usuario.setEmail("usu@usu.com");
		usuario.setSenha("senha");
		
		usuarioDAO.inserirUsuario(usuario);
		
	}

}
