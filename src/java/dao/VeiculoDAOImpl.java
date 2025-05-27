package dao;

import model.Veiculo;
import util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VeiculoDAOImpl implements VeiculoDAO {

    //Metodo de Input no Banco
    
    @Override
    public void inserir(Veiculo veiculo) throws Exception {
        String sql = "INSERT INTO veiculo (nome_modelo, marca, ano, cor, placa, numero_chassi, " +
                     "tipo_cambio, trava_vidro, condicao, combustivel, valor) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, veiculo.getNomeModelo());
            stmt.setString(2, veiculo.getMarca());
            stmt.setInt(3, veiculo.getAno());
            stmt.setString(4, veiculo.getCor());
            stmt.setString(5, veiculo.getPlaca());
            stmt.setString(6, veiculo.getNumeroChassi());
            stmt.setString(7, veiculo.getTipoCambio());
            stmt.setString(8, veiculo.getTravaVidro());
            stmt.setString(9, veiculo.getCondicao());
            stmt.setString(10, veiculo.getCombustivel());
            stmt.setDouble(11, veiculo.getValor());
            
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Erro ao inserir veículo", e);
        }
    }

    //Metodo de Update no Banco
    
    @Override
    public void atualizar(Veiculo veiculo) throws Exception {
        String sql = "UPDATE veiculo SET nome_modelo=?, marca=?, ano=?, cor=?, placa=?, " +
                     "numero_chassi=?, tipo_cambio=?, trava_vidro=?, condicao=?, combustivel=?, valor=? " +
                     "WHERE id=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, veiculo.getNomeModelo());
            stmt.setString(2, veiculo.getMarca());
            stmt.setInt(3, veiculo.getAno());
            stmt.setString(4, veiculo.getCor());
            stmt.setString(5, veiculo.getPlaca());
            stmt.setString(6, veiculo.getNumeroChassi());
            stmt.setString(7, veiculo.getTipoCambio());
            stmt.setString(8, veiculo.getTravaVidro());
            stmt.setString(9, veiculo.getCondicao());
            stmt.setString(10, veiculo.getCombustivel());
            stmt.setDouble(11, veiculo.getValor());
            stmt.setInt(12, veiculo.getId());
            
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Erro ao atualizar veículo", e);
        }
    }

    //Metodo de Delete em base do ID
    
    @Override
    public void deletar(int id) throws Exception {
        String sql = "DELETE FROM veiculo WHERE id=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new Exception("Erro ao deletar veículo", e);
        }
    }

    //Metodo de Pesquisa por ID
    
    @Override
    public Veiculo buscarPorId(int id) throws Exception {
        String sql = "SELECT * FROM veiculo WHERE id=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, id);
            try (ResultSet rs = stmt.executeQuery()) {
                if(rs.next()){
                    return preencherVeiculo(rs);
                }
            }
        } catch (SQLException e) {
            throw new Exception("Erro ao buscar veículo por id", e);
        }
        return null;
    }

        //Metodo de Pesquisa Geral
    
    @Override
    public List<Veiculo> buscarTodos() throws Exception {
        List<Veiculo> lista = new ArrayList<>();
        String sql = "SELECT * FROM veiculo";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while(rs.next()){
                lista.add(preencherVeiculo(rs));
            }
        } catch (SQLException e) {
            throw new Exception("Erro ao buscar todos veículos", e);
        }
        return lista;
    }
    
    private Veiculo preencherVeiculo(ResultSet rs) throws SQLException {
        Veiculo veiculo = new Veiculo();
        veiculo.setId(rs.getInt("id"));
        veiculo.setNomeModelo(rs.getString("nome_modelo"));
        veiculo.setMarca(rs.getString("marca"));
        veiculo.setAno(rs.getInt("ano"));
        veiculo.setCor(rs.getString("cor"));
        veiculo.setPlaca(rs.getString("placa"));
        veiculo.setNumeroChassi(rs.getString("numero_chassi"));
        veiculo.setTipoCambio(rs.getString("tipo_cambio"));
        veiculo.setTravaVidro(rs.getString("trava_vidro"));
        veiculo.setCondicao(rs.getString("condicao"));
        veiculo.setCombustivel(rs.getString("combustivel"));
        veiculo.setValor(rs.getDouble("valor"));
        return veiculo;
    }
}
