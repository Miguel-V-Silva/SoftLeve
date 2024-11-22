package modelo.dao.usuario;

import java.util.List;

import modelo.entidade.usuario.Usuario;

public interface UsuarioDAO {

	void inserirUsuario(Usuario usuario);

	void deletarUsuario(Usuario usuario);

	void atualizarUsuario(Usuario usuario);
	
	Usuario recuperarUsuarioPorId(Long id);

	List<Usuario> recuperarUsuarios();

}
