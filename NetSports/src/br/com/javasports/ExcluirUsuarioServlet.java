package br.com.javasports;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/removerUsuario")
public class ExcluirUsuarioServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		Usuario u = new Usuario();
		
		u.setCod(Integer.parseInt(request.getParameter("cod")));
		System.out.println(Integer.parseInt(request.getParameter("cod")));
		CadastroDAO cadastrodao = new CadastroDAO();
		cadastrodao.excluir(u);
		
		RequestDispatcher rd = request.getRequestDispatcher("ListaUsuarios");
		rd.forward(request, response);

	}
}
