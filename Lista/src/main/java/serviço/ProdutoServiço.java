package servi�o;

import dao.UsuarioDAO;
import modelo.Produto;

public class ProdutoServi�o {
		UsuarioDAO usuario = new UsuarioDAO();
/*
		public boolean alterar(Usuario usr) {
			return usuario.alterarUsuario(usr);
		}*/

		public boolean incluir(Produto pdt) {
			return usuario.incluirProduto(pdt);
		}
		/*
		public boolean excluir(String id) {
			int idUsuario;
			
			idUsuario = Integer.parseInt(id);
			
			return usuario.excluirUsuario(idUsuario);
		}
	}*/
}
