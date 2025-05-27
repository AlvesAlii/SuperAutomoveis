<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cadastrar Automóvel</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
      body { 
          background-color: #A9A9A9; /* Fundo cinza claro */
      }
      .container { 
          margin-top: 50px; 
      }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
       <!-- Título exibido apenas como texto -->
       <span class="navbar-brand">SuperAutomoveis</span>
       <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
               <li class="nav-item">
                    <a class="nav-link" href="index.html">Voltar a Tela Inicial</a>
               </li>
            </ul>
       </div>
    </nav>
    
         <!-- Sistema de Cadastro Visual -->
         
    <div class="container">
      <div class="card">
         <div class="card-header">
             <h3>Cadastrar Automóvel</h3>
         </div>
         <div class="card-body">
             <form action="CadastrarVeiculoServlet" method="post">
                  <div class="form-group">
                     <label for="nomeModelo">Nome Modelo:</label>
                     <input type="text" name="nomeModelo" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="marca">Marca:</label>
                     <input type="text" name="marca" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="ano">Ano:</label>
                     <input type="number" name="ano" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="cor">Cor:</label>
                     <input type="text" name="cor" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="placa">Placa:</label>
                     <input type="text" name="placa" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="numeroChassi">Número Chassi:</label>
                     <input type="text" name="numeroChassi" class="form-control" required>
                  </div>
                  <div class="form-group">
                     <label for="tipoCambio">Tipo Câmbio:</label>
                     <select name="tipoCambio" class="form-control" required>
                        <option value="Manual">Manual</option>
                        <option value="Automatico">Automático</option>
                     </select>
                  </div>
                  <div class="form-group">
                     <label for="travaVidro">Trava e Vidro Elétrico:</label>
                     <select name="travaVidro" class="form-control" required>
                         <option value="Apenas Trava">Apenas Trava</option>
                         <option value="Apenas Vidro">Apenas Vidro</option>
                         <option value="Ambos">Ambos</option>
                         <option value="Nenhum">Nenhum</option>
                     </select>
                  </div>
                  <div class="form-group">
                     <label for="condicao">Condição:</label>
                     <select name="condicao" class="form-control" required>
                         <option value="Novo">Novo</option>
                         <option value="SemiNovo">SemiNovo</option>
                         <option value="Usado">Usado</option>
                     </select>
                  </div>
                  <div class="form-group">
                     <label for="combustivel">Combustível:</label>
                     <select name="combustivel" class="form-control" required>
                         <option value="Gasolina">Gasolina</option>
                         <option value="Alcool">Álcool</option>
                         <option value="Flex">Flex</option>
                         <option value="Diesel">Diesel</option>
                         <option value="Eletrico">Elétrico</option>
                     </select>
                  </div>
                  <div class="form-group">
                     <label for="valor">Valor:</label>
                     <input type="number" step="0.01" name="valor" class="form-control" required>
                  </div>
                  <button type="submit" class="btn btn-primary">Cadastrar</button>
             </form>
         </div>
      </div>
    </div>

    <!-- Bootstrap JS e dependências -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>