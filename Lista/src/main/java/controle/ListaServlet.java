package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsuarioDAO;
import modelo.Produto;


@WebServlet("/ListaServlet")
public class ListaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    
    public ListaServlet() {
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String quantidade = request.getParameter("quantidade");
		Produto p = null;
		
		HttpSession session = request.getSession();
		
		UsuarioDAO dao = new UsuarioDAO();
		
		p = dao.consultarProduto(nome, 0);
		
		if(p != null) {
		response.sendRedirect("lista.jsp");
		} else {
			response.sendRedirect("erro.jsp");
		}
	}

}
