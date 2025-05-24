<%@ page import="model.Veiculo" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pesquisa de Veículo</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
      body { 
         background-color: #A9A9A9;
      }
      .container { 
         margin-top: 50px; 
      }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
       <!-- Título exibido como texto fixo -->
       <span class="navbar-brand">SuperAutomoveis</span>
       <div class="collapse navbar-collapse">
          <ul class="navbar-nav mr-auto">
              <li class="nav-item">
                 <a class="nav-link" href="index.html">Voltar a Tela Inicial</a>
              </li>
          </ul>
       </div>
    </nav>
    
    <div class="container">
       <div class="card">
          <div class="card-header">
             <h3>Pesquisar Veículo por ID</h3>
          </div>
          <div class="card-body">
             <form action="PesquisaVeiculoServlet" method="get">
                 <div class="form-group">
                     <label for="id">ID:</label>
                     <input type="number" name="id" class="form-control" required>
                 </div>
                 <button type="submit" class="btn btn-primary">Pesquisar</button>
             </form>
             <%
                 Veiculo v = (Veiculo) request.getAttribute("veiculo");
                 if (v != null) {
             %>
             <hr>
             <h4>Resultado da Pesquisa</h4>
             <p><strong>ID:</strong> <%= v.getId() %></p>
             <p><strong>Nome Modelo:</strong> <%= v.getNomeModelo() %></p>
             <p><strong>Marca:</strong> <%= v.getMarca() %></p>
             <p><strong>Ano:</strong> <%= v.getAno() %></p>
             <p><strong>Cor:</strong> <%= v.getCor() %></p>
             <p><strong>Placa:</strong> <%= v.getPlaca() %></p>
             <p><strong>Número Chassi:</strong> <%= v.getNumeroChassi() %></p>
             <p><strong>Tipo Câmbio:</strong> <%= v.getTipoCambio() %></p>
             <p>
                 <strong>Trava Vidro:</strong> 
                 <%
                     String trava = v.getTravaVidro();
                     if ("Nenhum".equalsIgnoreCase(trava)) {
                         out.print("Não");
                     } else {
                         out.print(trava);
                     }
                 %>
             </p>
             <p><strong>Condição:</strong> <%= v.getCondicao() %></p>
             <p><strong>Combustível:</strong> <%= v.getCombustivel() %></p>
             <p><strong>Valor:</strong> <%= v.getValor() %></p>
             <%
                 } else if(request.getParameter("id") != null) {
             %>
             <hr>
             <div class="alert alert-warning">Veículo não encontrado!</div>
             <%
                 }
             %>
          </div>
       </div>
    </div>
    
    <!-- Bootstrap JS e dependências -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
