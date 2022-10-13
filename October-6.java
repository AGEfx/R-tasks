public class Main {
    //y - лямбда - среднее число заказов в день
    int y = 3;
    public static void main(String[] args) {
        Main main = new Main();

        //1) вероятность размещения заказа к концу каждого дня недели(t)
        for (int t = 1; t <= 7; t++) {
            //вероятность, что за день будет совершено 0 заказов
            double p0 = 1.0 - main.nSum(18,t);
            //вероятность, что за день будет совершено <=5 заказов
            double result_p = p0 + main.nSum(5,t);
            System.out.println("День " + t + ": " + result_p);
        }

        //2)Среднее количество единиц товара, которые будут списаны к концу недели
        double avg_number = 0.0;
        for (int n = 0; n < 18; n++) {
            avg_number += n * main.p(18-n,7);
        }
        System.out.println("Среднее количество единиц товара = " + avg_number);
    }

    //функция подсчета вероятности
    double p(int k, int t) {
        //Math.pow(x,y) = x^y
        return (Math.pow(y * t, k) * Math.pow(Math.E, (-y * t)) / factorial(k));

    }

    long factorial(int k) {
        if (k == 0)
            return 1;
        else
            return (k * factorial(k - 1));
    }



    //функция суммы
    double nSum(int n, int t){
        double sum = 0.0;
            for (int m = 1; m <= n; m++) {
               sum += p(18 - m,t);
        }
            return sum;
    }
}

