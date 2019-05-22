package pratica2;

public class Data {
    protected int dia, mes, ano;

    //public Data(int dia, int mes, int ano) {
    //    setData(dia,mes,ano);
    //}

    public void setData(int dia, int mes, int ano){
        int diasmes[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        if(this.ehBissexto()) diasmes[1] = 29;

        if (mes > 0 && mes < 13){
            this.mes = mes;

            if (dia > 0 && dia <= diasmes[mes-1]){
                this.dia = dia;
            } else {
                System.out.println("Dia inválido");
                this.dia = 1;
            }
        } else {
            System.out.println("Mês inválido");
            this.mes = 1;
        }

        if (ano > 0){
            this.ano = ano;
        } else {
            System.out.println("Ano inválido");
            this.ano = 1900;
        }
    }

    public String getData(){
        return this.dia + "/" + this.mes + "/" + this.ano;
    }

    public boolean ehBissexto(){
        if(this.ano % 4 == 0 && (this.ano % 100 != 0 || this.ano % 400 == 0)){
            return true;
        }
        return false;
    }


    public static Data somarDias(Data data, int n){
        int diasmes[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

        int dd = data.dia;
        int mm = data.mes;
        int ano = data.ano;

        Data aux = data;

        while(n > 0){
            if(aux.ehBissexto()) diasmes[1] = 29;
            else diasmes[1] = 28;

            if(dd == diasmes[mm-1]){
                dd = 1;
                if(mm == 12) {
                    mm = 1;
                    ano++;
                }

                else mm++;
            }
            else dd++;

            n--;
            aux.setData(dd,mm,ano);
        }

        return new Data(dd,mm,ano);
    }
}
