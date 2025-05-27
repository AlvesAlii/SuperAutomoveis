package controll;

import dao.VeiculoDAOImpl;
import model.Veiculo;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

        // Obtém os parâmetros do formulário

@WebServlet("/AtualizarVeiculoServlet")
public class AtualizarVeiculoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nomeModelo = request.getParameter("nomeModelo");
        String marca = request.getParameter("marca");
        int ano = Integer.parseInt(request.getParameter("ano"));
        String cor = request.getParameter("cor");
        String placa = request.getParameter("placa");
        String numeroChassi = request.getParameter("numeroChassi");
        String tipoCambio = request.getParameter("tipoCambio");
        String travaVidro = request.getParameter("travaVidro");
        String condicao = request.getParameter("condicao");
        String combustivel = request.getParameter("combustivel");
        double valor = Double.parseDouble(request.getParameter("valor"));
        
        Veiculo veiculo = new Veiculo();
        veiculo.setId(id);
        veiculo.setNomeModelo(nomeModelo);
        veiculo.setMarca(marca);
        veiculo.setAno(ano);
        veiculo.setCor(cor);
        veiculo.setPlaca(placa);
        veiculo.setNumeroChassi(numeroChassi);
        veiculo.setTipoCambio(tipoCambio);
        veiculo.setTravaVidro(travaVidro);
        veiculo.setCondicao(condicao);
        veiculo.setCombustivel(combustivel);
        veiculo.setValor(valor);
        
        try {
            new VeiculoDAOImpl().atualizar(veiculo);
            response.sendRedirect("ListarVeiculoServlet");
        } catch (Exception e) {
            throw new ServletException("Erro ao atualizar veículo", e);
        }
    }
}
