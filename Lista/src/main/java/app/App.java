package app;

import java.util.List;

import dao.UsuarioDAO;
import modelo.Produto;

public class App {

	public static void main(String[] args) {
		
		List<Produto> lista;
		
		UsuarioDAO dao = new UsuarioDAO();
		
		lista = dao.listar();
		
		for(Produto u: lista) {
			System.out.println(u);
		}
	}

}
