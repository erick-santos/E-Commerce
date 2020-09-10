package br.com.javasports;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.mysql.cj.jdbc.Blob;

@WebServlet("/cadastroProduto")
public class cadastroProdutoServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idProduto = request.getParameter("idProduto");
		String codigo = request.getParameter("codigo");
		String nomeDoProduto = request.getParameter("nomeDoProduto");
		String tipoProduto = request.getParameter("tipoProduto");
		String marca = request.getParameter("marca");
		String genero = request.getParameter("genero");
		String unidade = request.getParameter("unidade");
		String precoUnitario = request.getParameter("precoUnitario");
		String descricaoDoProduto = request.getParameter("descricaoDoProduto");
		String imagemProduto = request.getParameter("imagemProduto");

		System.out.println(imagemProduto);
		

		Produto p = new Produto();

		p.setCodigoProduto(codigo);
		p.setNomeProduto(nomeDoProduto);
		p.setTipoProduto(tipoProduto);
		p.setMarca(marca);
		p.setGenero(genero);
		p.setUnidade(unidade);
		p.setPrecoUnitario(Double.parseDouble(precoUnitario.replace(",", ".")));
		p.setDescricao(descricaoDoProduto);
		p.setImagemProduto(imagemProduto);

		ProdutoDao produtoDao = new ProdutoDao();

		if(request.getParameter("idProduto") == "") {
			try {
				produtoDao.adicionarProduto(p);
				
				String mensagem = "O produto foi cadastrado com sucesso!";
				request.setAttribute("MENSAGEM", mensagem);
				RequestDispatcher rd = request.getRequestDispatcher("cadastroProduto.jsp");
				rd.forward(request, response);
				
				response.sendRedirect("cadastroProduto.jsp");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}else {
			p.setIdProduto(Integer.parseInt(request.getParameter("idProduto")));
			produtoDao.alterarProduto(p);
			response.sendRedirect("produtoAlteradoSucesso.jsp");
		}
		
		
		
		

	}

}
