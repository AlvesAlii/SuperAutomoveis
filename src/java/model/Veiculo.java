package model;

public class Veiculo {
    private int id;
    private String nomeModelo;
    private String marca;
    private int ano;
    private String cor;
    private String placa;
    private String numeroChassi;
    private String tipoCambio;
    private String travaVidro; // Alterado de boolean para String
    private String condicao;
    private String combustivel;
    private double valor;

    public Veiculo() {}

    public Veiculo(int id, String nomeModelo, String marca, int ano, String cor, String placa, 
                   String numeroChassi, String tipoCambio, String travaVidro,
                   String condicao, String combustivel, double valor) {
        this.id = id;
        this.nomeModelo = nomeModelo;
        this.marca = marca;
        this.ano = ano;
        this.cor = cor;
        this.placa = placa;
        this.numeroChassi = numeroChassi;
        this.tipoCambio = tipoCambio;
        this.travaVidro = travaVidro;
        this.condicao = condicao;
        this.combustivel = combustivel;
        this.valor = valor;
    }

    // Getters e Setters

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getNomeModelo() {
        return nomeModelo;
    }
    public void setNomeModelo(String nomeModelo) {
        this.nomeModelo = nomeModelo;
    }
    public String getMarca() {
        return marca;
    }
    public void setMarca(String marca) {
        this.marca = marca;
    }
    public int getAno() {
        return ano;
    }
    public void setAno(int ano) {
        this.ano = ano;
    }
    public String getCor() {
        return cor;
    }
    public void setCor(String cor) {
        this.cor = cor;
    }
    public String getPlaca() {
        return placa;
    }
    public void setPlaca(String placa) {
        this.placa = placa;
    }
    public String getNumeroChassi() {
        return numeroChassi;
    }
    public void setNumeroChassi(String numeroChassi) {
        this.numeroChassi = numeroChassi;
    }
    public String getTipoCambio() {
        return tipoCambio;
    }
    public void setTipoCambio(String tipoCambio) {
        this.tipoCambio = tipoCambio;
    }
    public String getTravaVidro() {
        return travaVidro;
    }
    public void setTravaVidro(String travaVidro) {
        this.travaVidro = travaVidro;
    }
    public String getCondicao() {
        return condicao;
    }
    public void setCondicao(String condicao) {
        this.condicao = condicao;
    }
    public String getCombustivel() {
        return combustivel;
    }
    public void setCombustivel(String combustivel) {
        this.combustivel = combustivel;
    }
    public double getValor() {
        return valor;
    }
    public void setValor(double valor) {
        this.valor = valor;
    }

    @Override
    public String toString() {
        return "Veiculo{" +
                "id=" + id +
                ", nomeModelo='" + nomeModelo + '\'' +
                ", marca='" + marca + '\'' +
                ", ano=" + ano +
                ", cor='" + cor + '\'' +
                ", placa='" + placa + '\'' +
                ", numeroChassi='" + numeroChassi + '\'' +
                ", tipoCambio='" + tipoCambio + '\'' +
                ", travaVidro='" + travaVidro + '\'' +
                ", condicao='" + condicao + '\'' +
                ", combustivel='" + combustivel + '\'' +
                ", valor=" + valor +
                '}';
    }
}
