package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Produto;

public class UsuarioDAO {
	Connection cnx = null;
	
	
	
	public Produto consultarProduto(String nome, int quantidade) {
		Produto produto = null;
		ResultSet rs = null;
		
		cnx= DAO.createConnection();
		
		String sql = "SELECT * FROM tb_lista WHERE nome = ? AND quantidade = ?";
		
		try {
			PreparedStatement ps = cnx.prepareStatement(sql);
			
			ps.setString(1, nome);
			ps.setInt(2, quantidade);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				produto = new Produto();
				
				produto.setId(rs.getInt("id"));
				produto.setNome(rs.getString("nome"));
				produto.setQuantidade(rs.getInt("quantidade"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return produto;
	}
	////////////////////////////////////////////////////////////////////////////
	public List<Produto> listar(){
		List<Produto> listaDeProdutos = new ArrayList<Produto>();
		ResultSet rs = null;
		Produto produto = null;
		
		cnx = DAO.createConnection();
		
		String sql = "SELECT * FROM tb_lista";
		
		
		try {
			PreparedStatement ps = cnx.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				produto = new Produto();
				
				produto.setId(rs.getInt("id"));
				produto.setNome(rs.getString("nome"));
				produto.setQuantidade(rs.getInt("quantidade"));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return listaDeProdutos;
	}

	
}
