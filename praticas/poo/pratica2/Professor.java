package pratica2;

public class Professor extends Pessoa{
    private int siape;
    private double salario;

    public Professor(String nome, int cpf, double salario){
      super(nome,cpf);
      this.salario = salario;
    }

    public int getSiape(){
      return this.siape;
    }

    public void setSiape(int siape){
      this.siape = siape;
    }
}
