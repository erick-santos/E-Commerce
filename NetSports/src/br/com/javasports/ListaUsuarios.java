package br.com.javasports;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ListaUsuarios")
public class ListaUsuarios extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CadastroDAO cadastroDAO = new CadastroDAO();

		request.setAttribute("lista", cadastroDAO.listarUsuario());
			
		RequestDispatcher rd = request.getRequestDispatcher("ListaUsuarios.jsp");
		rd.forward(request, response);
	}
}
