package controller;

import dao.VeiculoDAOImpl;
import model.Veiculo;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/PesquisaVeiculoServlet")
public class PesquisaVeiculoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idStr = request.getParameter("id");
        if (idStr != null && !idStr.isEmpty()) {
            try {
                int id = Integer.parseInt(idStr);
                Veiculo veiculo = new VeiculoDAOImpl().buscarPorId(id);
                request.setAttribute("veiculo", veiculo);
            } catch (Exception e) {
                throw new ServletException("Erro ao pesquisar veículo", e);
            }
        }
        request.getRequestDispatcher("pesquisaVeiculo.jsp").forward(request, response);
    }
}
