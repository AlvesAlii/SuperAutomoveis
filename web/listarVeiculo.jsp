<%@ page import="java.util.List" %>
<%@ page import="model.Veiculo" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Listar Automóveis</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    body { 
      background-color: #696969;
    }
    .container { 
      margin-top: 50px; 
    }
    table {
      background-color: #C0C0C0;
    }
    th {
      background-color: #A9A9A9;
      color: white;
    }
  </style>
</head>
<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
     <!-- Título -->
     <span class="navbar-brand">SuperAutomoveis</span>
     <div class="collapse navbar-collapse">
          <ul class="navbar-nav mr-auto">
             <li class="nav-item">
                  <a class="nav-link" href="index.html">Voltar a Tela Inicial</a>
             </li>
          </ul>
     </div>
  </nav>
  
    <!-- Sistema de Listagem Visual -->
  
  <div class="container">
    <h1 class="mb-4">Listar Automóveis</h1>
    <table class="table table-striped">
      <thead class="thead-dark">
        <tr>
          <th>ID</th>
          <th>Nome Modelo</th>
          <th>Marca</th>
          <th>Ano</th>
          <th>Cor</th>
          <th>Placa</th>
          <th>Número Chassi</th>
          <th>Tipo Câmbio</th>
          <th>Trava Vidro</th>
          <th>Condição</th>
          <th>Combustível</th>
          <th>Valor</th>
          <th>Ações</th>
        </tr>
      </thead>
      <tbody>
        <%
           List<Veiculo> veiculos = (List<Veiculo>) request.getAttribute("veiculos");
           if (veiculos != null) {
              for (Veiculo v : veiculos) {
        %>
            <tr>
              <td><%= v.getId() %></td>
              <td><%= v.getNomeModelo() %></td>
              <td><%= v.getMarca() %></td>
              <td><%= v.getAno() %></td>
              <td><%= v.getCor() %></td>
              <td><%= v.getPlaca() %></td>
              <td><%= v.getNumeroChassi() %></td>
              <td><%= v.getTipoCambio() %></td>
              <td>
                <%
                   String trava = v.getTravaVidro();
                   if ("Nenhum".equalsIgnoreCase(trava)) {
                       out.print("Não");
                   } else {
                       out.print(trava);
                   }
                %>
              </td>
              <td><%= v.getCondicao() %></td>
              <td><%= v.getCombustivel() %></td>
              <td><%= v.getValor() %></td>
              <td>
                 <a href="EditarVeiculoServlet?id=<%= v.getId() %>" class="btn btn-sm btn-warning mb-1">Editar</a>
                 <a href="ExcluirVeiculoServlet?id=<%= v.getId() %>" class="btn btn-sm btn-danger" 
                    onclick="return confirm('Deseja realmente excluir este veículo?');">Excluir</a>
              </td>
            </tr>
        <%
              }
           }
        %>
      </tbody>
    </table>
  </div>
  
  <!-- Bootstrap JS e dependências -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
