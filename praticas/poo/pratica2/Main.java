package pratica2;

import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        Data aniversario = new Data();
        aniversario.setData(28,3,2000);

        System.out.println(aniversario.getData());

        int n = scan.nextInt();
        Data novo = Data.somarDias(aniversario,n);
        System.out.println(novo.getData());


        Professor prof1 = new Professor();
        prof1.setNome("lalalala");
        prof1.setSiape(1235465);

        scan.close();
    }
}
