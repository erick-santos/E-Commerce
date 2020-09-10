package br.com.javasports;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("PaginaPrincipal")
public class PaginaPrincipalServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProdutoDao produtoDao = new ProdutoDao();

		req.setAttribute("produtos", produtoDao.listarProduto());
		RequestDispatcher rd = req.getRequestDispatcher("PaginaPrincipal.jsp");
		rd.forward(req, resp);
	}

}
