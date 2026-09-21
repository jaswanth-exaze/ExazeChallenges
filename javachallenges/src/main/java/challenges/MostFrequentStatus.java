package challenges;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class MostFrequentStatus {

    public static String MostFrequentStatus(String input) {

        Map<String, Integer> map = new HashMap<>();
        ArrayList<String> list = new ArrayList<>(); // set to store status in order

        for (String x : input.split("\\s+")) {
            if (!list.contains(x)) {
                list.add(x);
            }
            map.put(x, map.getOrDefault(x, 0) + 1);
            System.out.println(map);
        }

        String maxWord = null;
        int maxFreq = 0;
        for (String status : list) {
            if (map.get(status) > maxFreq) {
                maxFreq = map.get(status);
                maxWord = status;
            }
        }
        return maxWord;
    }

    public static void main(String[] args) {
        System.out.println(MostFrequentStatus("OPEN CLOSED OPEN HOLD CLOSED HOLD"));
    }
}
