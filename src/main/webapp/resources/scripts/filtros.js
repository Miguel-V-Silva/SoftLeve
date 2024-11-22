function filtrarTabelaEmail() {

	const consulta = document.getElementById("consulta-tarefa");
	const filtro = consulta.value.toUpperCase();
	const tabela = document.getElementById("tabela-tarefa");
	const tr = tabela.getElementsByTagName("tr");
  
	for (i = 0; i < tr.length; i++) {
	
		td = tr[i].getElementsByTagName("td")[0];
		
		if (td) {
		
			let conteudo = td.textContent || td.innerText;
			if (conteudo.toUpperCase().indexOf(filtro) > -1) 
				tr[i].style.display = "";
		
		  else 
				tr[i].style.display = "none";
		}
	}
}
