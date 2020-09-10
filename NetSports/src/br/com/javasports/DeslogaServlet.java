package br.com.javasports;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deslogar")
public class DeslogaServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println(req.getSession().getAttribute("User")+" DESLOGASERVLET");
		req.getSession().removeAttribute("User");
		//System.out.println(req.getSession().getAttribute("User")+" DESLOGASERVLET");
		resp.sendRedirect("PaginaPrincipal.jsp");
	}

}
