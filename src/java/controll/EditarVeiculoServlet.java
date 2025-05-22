package controller;

import dao.VeiculoDAOImpl;
import model.Veiculo;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/EditarVeiculoServlet")
public class EditarVeiculoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            Veiculo veiculo = new VeiculoDAOImpl().buscarPorId(id);
            if (veiculo != null) {
                request.setAttribute("veiculo", veiculo);
                request.getRequestDispatcher("editarVeiculo.jsp").forward(request, response);
            } else {
                response.sendRedirect("ListarVeiculoServlet");
            }
        } catch (Exception e) {
            throw new ServletException("Erro ao buscar veículo para edição", e);
        }
    }
}
