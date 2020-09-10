package br.com.javasports;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/carrinhoComprasServlet")
public class carrinhoComprasServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		double valorTotal = 0;
		// procura no escopo Application uma lista de nome "LISTACOMPRAS"
		List<Produto> listaCompras = (List<Produto>) getServletContext().getAttribute("LISTACOMPRAS");

		// caso a lista esteja vazia cria um novo ArrayList com o nome "LISTACOMPRAS"
		if (listaCompras == null) {
			listaCompras = new ArrayList<>();
			getServletContext().setAttribute("LISTACOMPRAS", listaCompras);
			System.out.println("ListaCompras criada");
		}

		// lógica original
		// List<Produto> listaCompras = new ArrayList<Produto>(); // cria uma lista de
		// Compras onde serão adicionado os produtos
		// double valorTotal = 0;
		
		//logica de exclusão:
		String remover = request.getParameter("remover");
		System.out.println("remover do carrinho o item" + remover);
		
		
		//lógica de inclusão:
		String idProduto = request.getParameter("idProduto"); // recebe idProduto como parametro da PaginaPrincipal e
																// cria um objeto Produto

		Produto p = new Produto();
		p.setIdProduto(Integer.parseInt(idProduto));
		ProdutoDao produtoDao = new ProdutoDao();
		Produto itemSelecionado = produtoDao.selecionarProdutoById(p);

		listaCompras.add(itemSelecionado); // adiciona
		
		
		
		// procedimento de inclusao do produto no carrinho e soma do valor

		for (Produto y : listaCompras) {
			valorTotal = valorTotal + y.getPrecoUnitario();
		}

		request.getSession().setAttribute("listaCompras", listaCompras);
		request.getSession().setAttribute("valorTotal", valorTotal);
		RequestDispatcher rd = request.getRequestDispatcher("carrinhoDeCompras.jsp");
		rd.forward(request, response);

	}
}
