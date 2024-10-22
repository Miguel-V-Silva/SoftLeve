package modelo.entidade.tipotarefa;
// Tipo Tarefa (idTarefa!, prioridade, função_tarefa, categoria)
import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import modelo.entidade.tarefa.Tarefa;
import modelo.enumeracao.categoria.Categoria;

public class TipoTarefa implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_contato")
	private Tarefa tarefa;
	
	@Column(name = "prioridade", nullable = false)
	private int prioridade;
	
	@Enumerated(EnumType.STRING)
	private Categoria categoria;
	
	
}
