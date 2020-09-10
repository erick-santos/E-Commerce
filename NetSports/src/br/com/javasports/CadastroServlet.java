package br.com.javasports;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

@WebServlet("/Cadastro")
public class CadastroServlet extends HttpServlet{

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		String endereco = request.getParameter("endereco");
		String numero = request.getParameter("numero");
		String complemento = request.getParameter("complemento");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");
		String cep = request.getParameter("cep");
		
		DiskFileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
		
		Usuario u = new Usuario();
		u.setNome(nome);
		u.setCpf(cpf);
		u.setEmail(email);
		u.setSenha(senha);
		u.setEndereco(endereco);
		u.setNumero(numero);
		u.setComplemento(complemento);
		u.setCidade(cidade);
		u.setEstado(estado);
		u.setCep(cep);
		
		CadastroDAO cadastroDAO = new CadastroDAO();
		try {
			cadastroDAO.adicionarUsuario(u);
			response.sendRedirect("SucessoCadastro.jsp");
		} catch (SQLException e) {
				e.printStackTrace();
		}
	
	}
}
