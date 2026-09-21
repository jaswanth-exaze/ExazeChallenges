package challenges;

public class LongestHealthyStreak {
    public static int LongestHealthyStreak(String input) {
        if (input.trim().isEmpty()) {
            return 0;
        }

        String[] statusList = input.trim().split("\\s+");
        int maxLength = 0;
        int curLength = 0;
        for (int i = 0; i < statusList.length; i++) {
            if (statusList[i].equals("UP")) {
                curLength++;
            } else {
                curLength = 0;
            }
            if (curLength > maxLength) {
                maxLength = curLength;
            }
        }

        return maxLength;

    }

    public static void main(String[] args) {
        System.out.println(LongestHealthyStreak("UP"));
    }
}
