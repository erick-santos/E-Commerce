package br.com.javasports;

import java.io.ByteArrayInputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProdutoDao {
	private Connection conexao;

	public ProdutoDao() {
		conexao = new ConnectionFactory().getConnection();
	}

	public void adicionarProduto(Produto p) throws SQLException {
		String sql = "INSERT INTO tbl_produto (codigoProduto, nomeProduto, tipoProduto, descricao, marca, genero, unidade, precoUnitario, dataCadastramento, imagemProduto) VALUES (?,?,?,?,?,?,?,?,?,?)";
		try {

			PreparedStatement comando = conexao.prepareStatement(sql);

			comando.setString(1, p.getCodigoProduto());
			comando.setString(2, p.getNomeProduto());
			comando.setString(3, p.getTipoProduto());
			comando.setString(4, p.getDescricao());
			comando.setString(5, p.getMarca());
			comando.setString(6, p.getGenero());
			comando.setString(7, p.getUnidade());
			comando.setDouble(8, p.getPrecoUnitario());
			comando.setDate(9, Date.valueOf(p.getDataCadastramento().now()));
			comando.setString(10, p.getImagemProduto());
			comando.execute();
			comando.close();

			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public List<Produto> listarProduto() {

		List<Produto> listaproduto = new ArrayList<Produto>();
		String sql = "SELECT * FROM tbl_produto";

		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			ResultSet rs = comando.executeQuery();
			while (rs.next()) {
				Produto p = new Produto();
				p.setIdProduto(rs.getInt("idProduto"));
				p.setCodigoProduto(rs.getString("codigoProduto"));
				p.setNomeProduto(rs.getString("nomeProduto"));
				p.setTipoProduto(rs.getString("tipoProduto"));
				p.setDescricao(rs.getString("descricao"));
				p.setMarca(rs.getString("marca"));
				p.setGenero(rs.getString("genero"));
				p.setUnidade(rs.getString("unidade"));
				p.setPrecoUnitario(rs.getDouble("precoUnitario"));
				p.setDataCadastramento(rs.getDate("dataCadastramento").toLocalDate());
				p.setImagemProduto(rs.getString("imagemProduto"));
				listaproduto.add(p);
			}
			rs.close();
			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return listaproduto;
	}

	public void excluir(Produto p) {
		String sql = "DELETE FROM tbl_produto WHERE idProduto = ?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			comando.setInt(1, p.getIdProduto());
			comando.execute();
			comando.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public Produto selecionarProdutoById(Produto p) {
		String sql = "SELECT * FROM tbl_produto WHERE idProduto = ?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			comando.setInt(1, p.getIdProduto());
			ResultSet rs = comando.executeQuery();

			rs.next();
			p.setIdProduto(rs.getInt("idProduto"));
			p.setCodigoProduto(rs.getString("codigoProduto"));
			p.setNomeProduto(rs.getString("nomeProduto"));
			p.setTipoProduto(rs.getString("tipoProduto"));
			p.setDescricao(rs.getString("descricao"));
			p.setMarca(rs.getString("marca"));
			p.setGenero(rs.getString("genero"));
			p.setUnidade(rs.getString("unidade"));
			p.setPrecoUnitario(rs.getDouble("precoUnitario"));
			p.setImagemProduto(rs.getString("imagemProduto"));
			
			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return p;

	}

	public void alterarProduto(Produto p) {
		String sql = "UPDATE tbl_produto SET codigoProduto=?, nomeProduto=?, tipoProduto=?, descricao=?, marca=?, genero=?, unidade=?, precoUnitario=?, imagemProduto=? WHERE idProduto=?";
		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			comando.setString(1, p.getCodigoProduto());
			comando.setString(2, p.getNomeProduto());
			comando.setString(3, p.getTipoProduto());
			comando.setString(4, p.getDescricao());
			comando.setString(5, p.getMarca());
			comando.setString(6, p.getGenero());
			comando.setString(7, p.getUnidade());
			comando.setDouble(8, p.getPrecoUnitario());
			comando.setString(9, p.getImagemProduto());
			
			comando.setInt(10, p.getIdProduto());
			comando.execute();
			
			comando.close();
			conexao.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<Produto> relatorioProduto() {

		List<Produto> relatorioProduto = new ArrayList<Produto>();
		//String sql = "SELECT * FROM tbl_produto ORDER BY tipoProduto ASC";
		String sql = "call selecionaProduto()";

		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			ResultSet rs = comando.executeQuery();
			while (rs.next()) {
				Produto p = new Produto();
				p.setIdProduto(rs.getInt("idProduto"));
				p.setCodigoProduto(rs.getString("codigoProduto"));
				p.setNomeProduto(rs.getString("nomeProduto"));
				p.setTipoProduto(rs.getString("tipoProduto"));
				p.setDescricao(rs.getString("descricao"));
				p.setMarca(rs.getString("marca"));
				p.setGenero(rs.getString("genero"));
				p.setUnidade(rs.getString("unidade"));
				p.setPrecoUnitario(rs.getDouble("precoUnitario"));
				p.setDataCadastramento(rs.getDate("dataCadastramento").toLocalDate());
				p.setImagemProduto(rs.getString("imagemProduto"));
				relatorioProduto.add(p);
			}
			rs.close();
			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return relatorioProduto;
	}
	
	public List<Relatorio> relatorioExclusao() {

		List<Relatorio> relatorioProduto = new ArrayList<Relatorio>();
		String sql = "SELECT * FROM tbl_Log_Alteracao";

		try {
			PreparedStatement comando = conexao.prepareStatement(sql);
			ResultSet rs = comando.executeQuery();
			while (rs.next()) {
				Relatorio re = new Relatorio();
				re.setTipoAlteracao(rs.getString("tipoAlteracao"));
				re.setCodUser(rs.getString("codUser"));
				re.setTipoProduto(rs.getString("tipoProduto"));
				re.setCodigoProduto(rs.getString("codigoProduto"));
				re.setNomeProduto(rs.getString("nomeProduto"));
				re.setDescricao(rs.getString("descricao"));
				re.setMarca(rs.getString("marca"));
				re.setPrecoUnitario(rs.getLong("precoUnitario"));
				re.setDataHoraAcao(rs.getDate("dataHoraAcao").toLocalDate());
				re.setDataCadastramento(rs.getDate("dataCadastramento").toLocalDate());
			
				relatorioProduto.add(re);
			}
			rs.close();
			comando.close();
			conexao.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return relatorioProduto;
	}
}
