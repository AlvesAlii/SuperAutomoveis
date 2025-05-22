package controller;

import dao.VeiculoDAOImpl;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/ExcluirVeiculoServlet")
public class ExcluirVeiculoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            new VeiculoDAOImpl().deletar(id);
            response.sendRedirect("ListarVeiculoServlet");
        } catch (Exception e) {
            throw new ServletException("Erro ao excluir veículo", e);
        }
    }
}
