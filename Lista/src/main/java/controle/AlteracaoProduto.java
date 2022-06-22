package controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Produto;
import serviço.ProdutoServiço;


@WebServlet("/AlteracaoProduto")
public class AlteracaoProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AlteracaoProduto() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		ProdutoServiço servico = new  ProdutoServiço();
		Produto produto = new Produto();
		
		String idRequisicao = request.getParameter("id");
		
		produto = servico.buscaPorId(Integer.parseInt(idRequisicao));
		
		if(!Objects.isNull(produto)) {
			session.setAttribute("produtoSelecionado", produto);
			
			
			try (PrintWriter out = response.getWriter()) {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Lista de compras</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h2>alterar produto</h2>");
			
			out.println("<form action=\"AlterarServlet\" method=\"post\" >");
			out.println("<input type=\"hidden\" name=\"id\" id=\"id\" value=\"<%=pdt.getId() %>\"/>");
			out.println("<label>Produto: </label>");
			out.println("<input type=\"text\" name=\"nome\" id=\"nome\" placeholder=\"Nome do Produto\" size=\"40\" value=\"<%=pdt.getNome()%>\"/><br>");
			out.println("<label>Quantidade: </label>");
			out.println("<input type=\"number\" name=\"quantidade\" id=\"quantidade\"\" placeholder=\"Nome do Produto\\ size=\"20\" value=\"<%=pdt.getQuantidade()%>\"/><br>");
			out.println("<input type=\"submit\" value=\"editar\"/>");
			
			out.println("</form>");
			
			out.println("</body>");
			out.println("</html>");
			

		
		}
			//response.sendRedirect("");
		}else {
			response.sendRedirect("index.jsp");
		}
	}

}
