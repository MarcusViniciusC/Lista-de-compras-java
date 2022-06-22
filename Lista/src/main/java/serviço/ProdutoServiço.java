package serviço;

import dao.UsuarioDAO;
import modelo.Produto;

public class ProdutoServiço {
		UsuarioDAO usuario = new UsuarioDAO();

		public Produto buscaPorId(int id) {
			return usuario.buscaPorId(id);
		}
		
		public boolean alterar(Produto pdt) {
			return usuario.alterarProduto(pdt);
		}

		public boolean incluir(Produto pdt) {
			return usuario.incluirProduto(pdt);
		}
		
		public boolean excluir(String id) {
			int idProduto;
			
			idProduto = Integer.parseInt(id);
			
			return usuario.excluirProduto(idProduto);
		}
	
}
