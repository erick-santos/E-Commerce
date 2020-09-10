package br.com.javasports;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

	private Usuario usuario;
	private CadastroDAO uDao = new CadastroDAO();
	private boolean logado = false;

	/*
	 * public void doPost(HttpServletRequest req, HttpServletResponse res) throws
	 * IOException { String Email = req.getParameter("email"); String Senha =
	 * req.getParameter("senha"); if (uDao.logar(Email, Senha).getEmail() != null &&
	 * uDao.logar(Email, Senha).getSenha() != null) { logado = true;
	 * res.sendRedirect("MinhaPagina.jsp"); } else {
	 * res.sendRedirect("NaoCadastrado.jsp"); } }
	 */

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String Email = req.getParameter("email");
		String Senha = req.getParameter("senha");
		if (uDao.logar(Email, Senha).getEmail() != null && uDao.logar(Email, Senha).getSenha() != null) {
			logado = true;
			resp.sendRedirect("MinhaPagina.jsp");
		} else {
			resp.sendRedirect("NaoCadastrado.jsp");
		}
		if (logado) {
			req.getSession().setAttribute("User", "LOGADO");
		}
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}

/*
 * public Usuario login(String email, String senha) { if (uDao.logar(email,
 * senha) != null) { return usuario = uDao.logar(email, senha); } return null; }
 * 
 */

/*
 * public boolean consultaLogin(String usuario) { try { final String DRIVER =
 * "com.mysql.cj.jdbc.Driver"; final String URL =
 * "jdbc:mysql://localhost:3306/Usuario?serverTimezone=UTC"; final String USER =
 * "root"; final String PASS = ""; Class.forName(DRIVER);
 * System.out.println("Classe Carregada"); Connection con =
 * DriverManager.getConnection(URL, USER, PASS);
 * System.out.println("Conectado com o Banco de Dados"); String sql =
 * "SELECT * FROM tbl_usuario WHERE email = ?"; PreparedStatement stm =
 * con.prepareStatement(sql); stm.setString(1, usuario); ResultSet rs =
 * stm.executeQuery(); return rs.first(); } catch(Exception e) {
 * e.printStackTrace(); return false; } }
 * 
 * public void doPost(HttpServletRequest req, HttpServletResponse res) throws
 * IOException { String Email = req.getParameter("email"); String Senha =
 * req.getParameter("senha");
 * 
 * PrintWriter out = res.getWriter();
 * 
 * boolean r = consultaLogin(Email); boolean s = consultaLogin(Senha);
 * 
 * if(r) { res.sendRedirect("MinhaPagina.jsp"); } else {
 * res.sendRedirect("NaoCadastrado.jsp"); } }
 */
