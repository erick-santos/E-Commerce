package br.com.javasports;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/remover")
public class RemoverProdutoServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		Produto p = new Produto();
		
		p.setIdProduto(Integer.parseInt(request.getParameter("idProduto")));
		System.out.println(Integer.parseInt(request.getParameter("idProduto")));
		ProdutoDao produtodao = new ProdutoDao();
		produtodao.excluir(p);
		
		RequestDispatcher rd = request.getRequestDispatcher("listaProduto");
		rd.forward(request, response);

	}
}
