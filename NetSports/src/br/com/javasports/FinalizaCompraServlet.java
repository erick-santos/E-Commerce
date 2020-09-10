package br.com.javasports;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FinalizaCompraServlet")
public class FinalizaCompraServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String valorTotal = request.getParameter("valorTotal");

		request.setAttribute("valorTotal", valorTotal);
		RequestDispatcher rd = request.getRequestDispatcher("pedidoRealizado.jsp");

		rd.forward(request, response);

	}
}
