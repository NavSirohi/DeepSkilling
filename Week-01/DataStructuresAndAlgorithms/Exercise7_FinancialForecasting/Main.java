
public class Main {

    public static void main(String[] args) {

        double presentValue = 50000;
        double growthRate = 0.10; // 10%
        int years = 4;

        double futureValue = FinancialForecast.calculateFutureValue(presentValue, growthRate, years);

        System.out.println("present Value : " + presentValue);
        System.out.println("growth Rate   : " + (growthRate * 100) + "%");
        System.out.println("years         : " + years);
        System.out.printf("future Value  : %.2f%n", futureValue);
    }
}
