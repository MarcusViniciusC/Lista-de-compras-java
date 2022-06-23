package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Produto;
import serviço.ProdutoServiço;


@WebServlet("/AlterarProdutoServlet")
public class AlterarProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AlterarProdutoServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Produto pdt = new Produto();
		ProdutoServiço servico = new ProdutoServiço();
		
		pdt.setId(Integer.parseInt(request.getParameter("id")));
		pdt.setNome(request.getParameter("nome"));
		pdt.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
		
		if(servico.alterar(pdt)) {
			response.sendRedirect("index.jsp");
		}
	}

}
