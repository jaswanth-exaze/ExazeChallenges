package challenges;

import java.util.Arrays;

public class SumBillableHours {

    public static int SumBillableHours(String input) {
        // int result=0;
        // for(String s : input.split("\\s+")){
        // result= result+ Integer.parseInt(s);
        // }
        // return result;
        return Arrays.stream(input.trim().split("\\s+")).map(Integer::parseInt).reduce(0, Integer::sum);

    }

    public static void main(String[] args) {
        System.out.println(SumBillableHours("7 6 7 5 7"));
    }
}
