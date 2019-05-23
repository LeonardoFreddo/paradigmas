package Empresa;

public class Funcionario{
    protected String nome;
    protected int cpf;
    protected double salario;

  	public Funcionario(String nome, int cpf, double salario){
		this.nome = nome;
      	this.cpf = cpf;
      	this.salario = salario;
  	}

  	public String getNome(){
    	return this.nome;
  	}
  	public int getCPF(){
  	  	return this.cpf;
  	}
  	public double getSalario(){
    	return this.salario;
  	}


  	public void setNome(String nome){
    	this.nome = nome;
  	}
  	public void setCPF(int cpf){
    	this.cpf = cpf;
  	}
  	public void setSalario(double salario){
    	this.salario = salario;
  	}

  	public void mostraFuncionario(){
    	System.out.println("Nome: " + this.nome);
    	System.out.println("CPF: " + this.cpf);
    	System.out.println("Salario: " + this.salario);
  	}


}
