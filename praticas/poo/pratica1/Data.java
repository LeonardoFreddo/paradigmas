package lala;

public class Data {
    int dia, mes, ano;

    public Data(int dia, int mes, int ano) {
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }

    public void setData(int dia, int mes, int ano) {
        int diasmes[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        if (mes > 0 && mes < 13) {
            this.mes = mes;

            if (dia > 0 && dia <= diasmes[mes + 1]) {
                this.dia = dia;
            } else {
                System.out.println("Dia inválido");
                this.dia = 1;
            }
        } else {
            System.out.println("Mês inválido");
            this.mes = 1;
        }

        if (ano > 0) {
            this.ano = ano;
        } else {
            System.out.println("Ano inválido");
            this.ano = 1900;
        }

    }
    public String getData(){
        return dia + "/" + mes + "/" + ano;
    }
}
