<%@ page import="model.Veiculo" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Automóvel</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
      body { background-color: #a6a6a6; }
      .container { margin-top: 50px; }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
       <a class="navbar-brand" href="index.jsp">Concessionária</a>
       <div class="collapse navbar-collapse">
          <ul class="navbar-nav mr-auto">
             <li class="nav-item">
                 <a class="nav-link" href='index.html'>Voltar a Tela Inicial</a>
             </li>
          </ul>
       </div>
    </nav>
    
    <div class="container">
      <%
          Veiculo v = (Veiculo) request.getAttribute("veiculo");
          if(v == null) {
      %>
          <div class="alert alert-warning">Veículo não encontrado!</div>
          <a class="btn btn-secondary" href="ListarVeiculoServlet">Voltar</a>
      <%
          } else {
      %>
      <div class="card">
         <div class="card-header">
             <h3>Editar Automóvel - ID: <%= v.getId() %></h3>
         </div>
         <div class="card-body">
             <form action="AtualizarVeiculoServlet" method="post">
                 <input type="hidden" name="id" value="<%= v.getId() %>" />
                 
                 <div class="form-group">
                     <label for="nomeModelo">Nome Modelo</label>
                     <input type="text" name="nomeModelo" class="form-control" value="<%= v.getNomeModelo() %>" required>
                 </div>
                 <div class="form-group">
                     <label for="marca">Marca</label>
                     <input type="text" name="marca" class="form-control" value="<%= v.getMarca() %>" required>
                 </div>
                 <div class="form-group">
                     <label for="ano">Ano</label>
                     <input type="number" name="ano" class="form-control" value="<%= v.getAno() %>" required>
                 </div>
                 <div class="form-group">
                     <label for="cor">Cor</label>
                     <input type="text" name="cor" class="form-control" value="<%= v.getCor() %>" required>
                 </div>
                 <div class="form-group">
                     <label for="placa">Placa</label>
                     <input type="text" name="placa" class="form-control" value="<%= v.getPlaca() %>" required>
                 </div>
                 <div class="form-group">
                     <label for="numeroChassi">Número Chassi</label>
                     <input type="text" name="numeroChassi" class="form-control" value="<%= v.getNumeroChassi() %>" required>
                 </div>
                 <div class="form-group">
                     <label for="tipoCambio">Tipo Câmbio</label>
                     <select name="tipoCambio" class="form-control" required>
                         <option value="Manual" <%= "Manual".equals(v.getTipoCambio()) ? "selected" : "" %>>Manual</option>
                         <option value="Automatico" <%= "Automatico".equals(v.getTipoCambio()) ? "selected" : "" %>>Automático</option>
                     </select>
                 </div>
                 <div class="form-group">
                     <label for="travaVidro">Trava e Vidro Elétrico</label>
                     <select name="travaVidro" class="form-control" required>
                         <option value="Apenas Trava" <%= "Apenas Trava".equals(v.getTravaVidro()) ? "selected" : "" %>>Apenas Trava</option>
                         <option value="Apenas Vidro" <%= "Apenas Vidro".equals(v.getTravaVidro()) ? "selected" : "" %>>Apenas Vidro</option>
                         <option value="Ambos" <%= "Ambos".equals(v.getTravaVidro()) ? "selected" : "" %>>Ambos</option>
                         <option value="Nenhum" <%= "Nenhum".equals(v.getTravaVidro()) ? "selected" : "" %>>Nenhum</option>
                     </select>
                 </div>
                 <div class="form-group">
                     <label for="condicao">Condição</label>
                     <select name="condicao" class="form-control" required>
                         <option value="Novo" <%= "Novo".equals(v.getCondicao()) ? "selected" : "" %>>Novo</option>
                         <option value="SemiNovo" <%= "SemiNovo".equals(v.getCondicao()) ? "selected" : "" %>>SemiNovo</option>
                         <option value="Usado" <%= "Usado".equals(v.getCondicao()) ? "selected" : "" %>>Usado</option>
                     </select>
                 </div>
                 <div class="form-group">
                     <label for="combustivel">Combustível</label>
                     <select name="combustivel" class="form-control" required>
                         <option value="Gasolina" <%= "Gasolina".equals(v.getCombustivel()) ? "selected" : "" %>>Gasolina</option>
                         <option value="Alcool" <%= "Alcool".equals(v.getCombustivel()) ? "selected" : "" %>>Álcool</option>
                         <option value="Flex" <%= "Flex".equals(v.getCombustivel()) ? "selected" : "" %>>Flex</option>
                         <option value="Diesel" <%= "Diesel".equals(v.getCombustivel()) ? "selected" : "" %>>Diesel</option>
                         <option value="Eletrico" <%= "Eletrico".equals(v.getCombustivel()) ? "selected" : "" %>>Elétrico</option>
                     </select>
                 </div>
                 <div class="form-group">
                     <label for="valor">Valor</label>
                     <input type="number" step="0.01" name="valor" class="form-control" value="<%= v.getValor() %>" required>
                 </div>
                 <button type="submit" class="btn btn-success">Atualizar</button>
                 <a href="ListarVeiculoServlet" class="btn btn-secondary">Cancelar</a>
             </form>
         </div>
      </div>
      <%
          }
      %>
    </div>
    <!-- Bootstrap JS e dependências -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
