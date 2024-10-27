package modelo.principal;


import modelo.dao.usuario.UsuarioDAOImpl;
import modelo.entidade.usuario.Usuario;

public class Main {

	public static void main(String[] args) {
		UsuarioDAOImpl usuarioDAO = new UsuarioDAOImpl();
		Usuario usuario = new Usuario();
		String email = "miguelvieiro.silva@gmail.com";
		
		for (Usuario usuarios : usuarioDAO.recuperarUsuarios()) {
			if (usuarios.getEmail().equals(email)) {
				usuario = usuarios;
				
				usuario.setTentativas(0);
			}
		}
		
		try {
			usuarioDAO.atualizarUsuario(usuario);
		} catch (Exception e) {
			System.out.println("Erro ao atualizar");
		}
		
		
		
		
	}

}
