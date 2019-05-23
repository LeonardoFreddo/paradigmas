package Empresa;

class Main{
  	public static void main(String agrv[]){
		Funcionario func1 = new Funcionario("Joao", 1234567, 1000.8);
    	Gerente gen1 = new Gerente("Lala", 1265789, 10000.23);

    	func1.mostraFuncionario();
    	gen1.mostraFuncionario();
  }
}
