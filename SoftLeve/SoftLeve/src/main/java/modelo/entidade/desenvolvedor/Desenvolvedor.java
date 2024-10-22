package modelo.entidade.desenvolvedor;
// Desenvolvedor (idDesenvolvedor*, nome, função, email!)

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import modelo.entidade.tarefa.Tarefa;
import modelo.entidade.usuario.Usuario;
import modelo.enumeracao.funcaodesenvolvedor.FuncaoDesenvolvedor;

@Entity
@Table(name = "desenvolvedor")
public class Desenvolvedor extends Usuario implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_desenvolvedor")
	private long idDesenvolvedor;
	
	@Column(name = "nome_desenvolvedor", length = 45, nullable = false)
	private String nomeDesenvolvedor;
	
	@Enumerated(EnumType.STRING)
	private FuncaoDesenvolvedor funcao;
	
	
	
	public long getIdDesenvolvedor() {
		return idDesenvolvedor;
	}

	public void setIdDesenvolvedor(long idDesenvolvedor) {
		this.idDesenvolvedor = idDesenvolvedor;
	}

	public String getNomeDesenvolvedor() {
		return nomeDesenvolvedor;
	}

	public void setNomeDesenvolvedor(String nomeDesenvolvedor) {
		this.nomeDesenvolvedor = nomeDesenvolvedor;
	}

	public FuncaoDesenvolvedor getFuncao() {
		return funcao;
	}

	public void setFuncao(FuncaoDesenvolvedor funcao) {
		this.funcao = funcao;
	}


	
	
}
