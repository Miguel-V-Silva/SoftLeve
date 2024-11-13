package modelo.principal;


import modelo.dao.desenvolvedor.DesenvolvedorDAOImpl;
import modelo.entidade.desenvolvedor.Desenvolvedor;


public class Main {

	public static void main(String[] args) {
		DesenvolvedorDAOImpl desenvolvedorDAO = new DesenvolvedorDAOImpl();
		
        Desenvolvedor desenvolvedor = desenvolvedorDAO.recuperarDesenvolvedorPorIdUsaurio(1L);
		
		if (desenvolvedor==null) {
			System.out.println("aaa");
		}else {
			System.out.println("bbb");
		}
	}

}
