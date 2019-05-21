package pratica2;

public class Pessoa {
    Data dataNascimento;
    String nome;
    int cpf;
    String sexo;

    public Pessoa(Data dataNascimento, String nome, int cpf, String sexo) {
        this.dataNascimento = dataNascimento;
        this.nome = nome;
        this.cpf = cpf;
        this.sexo = sexo;
    }

    public void setDataNascimento(Data dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String apresentarPessoa(){
        return nome + "\n" + cpf + "\n" + this.dataNascimento.getData() + "\n" + sexo;
    }
}
