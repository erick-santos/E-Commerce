package br.com.javasports;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/relatorioProduto")
public class RelatorioServlet extends HttpServlet {

		public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ProdutoDao produtoDao = new ProdutoDao();
			request.setAttribute("relatorio", produtoDao.relatorioProduto());
			
			RequestDispatcher rd = request.getRequestDispatcher("relatorioDeProdutos.jsp");
			rd.forward(request, response);
		}
	}
