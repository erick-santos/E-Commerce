package br.com.javasports;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaginaPrincipal")
public class ListaCardsServlet extends HttpServlet {
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProdutoDao produtoDao = new ProdutoDao();

		// mandar lista de produtos para a PaginaPrincipal
		
		getServletContext().setAttribute("listaCards", produtoDao.listarProduto());
		
		//original:  request.setAttribute("listaCards", produtoDao.listarProduto());
		RequestDispatcher rs = request.getRequestDispatcher("PaginaPrincipal.jsp");
		rs.forward(request, response);
		
	}
}
