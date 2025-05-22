package dao;

import model.Veiculo;
import java.util.List;

public interface VeiculoDAO {
    void inserir(Veiculo veiculo) throws Exception;
    void atualizar(Veiculo veiculo) throws Exception;
    void deletar(int id) throws Exception;
    Veiculo buscarPorId(int id) throws Exception;
    List<Veiculo> buscarTodos() throws Exception;
}
