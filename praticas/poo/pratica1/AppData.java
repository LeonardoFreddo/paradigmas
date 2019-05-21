package pratica2;

import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        Data aniversario = new Data(1,1,1);
        aniversario.setData(28,3,2000);

        System.out.println(aniversario.getData());

        int n = scan.nextInt();
        Data novo = Data.somarDias(aniversario,n);
        System.out.println(novo.getData());

        scan.close();
    }
}
