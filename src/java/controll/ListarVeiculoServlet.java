package controller;

import dao.VeiculoDAOImpl;
import model.Veiculo;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/ListarVeiculoServlet")
public class ListarVeiculoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Veiculo> lista = new VeiculoDAOImpl().buscarTodos();
            request.setAttribute("veiculos", lista);
            request.getRequestDispatcher("listarVeiculo.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException("Erro ao listar veículos", e);
        }
    }
}
