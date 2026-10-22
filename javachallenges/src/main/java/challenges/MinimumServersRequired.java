package challenges;

import java.util.ArrayList;
import java.util.List;
import java.util.PriorityQueue;

public class MinimumServersRequired {

    public static int MinimumServersRequired(String inputs) {
        if (inputs == null || inputs.trim().isEmpty()) {
            return -1; // invalid input representation
        }
        inputs = inputs.trim();
        List<List<Integer>> jobs = new ArrayList<List<Integer>>();

        for (String job : inputs.split("\\s+")) {
            String[] times = job.split("-");

            int start = Integer.parseInt(times[0]);
            int end = Integer.parseInt(times[1]);
            jobs.add(List.of(start, end));
        }
        jobs.sort((a, b) -> Integer.compare(a.get(0), b.get(0)));

        PriorityQueue<Integer> serverEndTimes = new PriorityQueue<>();

        for (List<Integer> job : jobs) {

            int curStart = job.get(0);
            int curEnd = job.get(1);

            if (!serverEndTimes.isEmpty() && serverEndTimes.peek() <= curStart) {
                serverEndTimes.poll();
            }
            serverEndTimes.offer(curEnd);
        }

        return serverEndTimes.size();
    }
    public static void main(String[] args) {
        System.out.println(MinimumServersRequired("1-4 2-5 7-9 3-6"));
    }
}
