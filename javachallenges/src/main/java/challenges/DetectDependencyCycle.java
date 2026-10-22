package challenges;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class DetectDependencyCycle{
    static Boolean hasCycle(String input) {
        Map<Character, List<Character>> graph = new HashMap<>();
        Set<Character> vertexs = new HashSet<>();

        for (String parts : input.trim().split("\\s+")) {

            char from = parts.charAt(0);
            char to = parts.charAt(3);
            vertexs.add(from);
            vertexs.add(to);
            graph.putIfAbsent(from, new ArrayList<>());
            graph.get(from).add(to);
        }
        System.out.println(graph);
        System.out.println(vertexs);

        for (Character node : vertexs) {
            if (dfs(node, new ArrayList<>(), graph)) {
                return true;
            }
        }

        return false;
    }

    static Boolean dfs(char node, List<Character> visited, Map<Character, List<Character>> graph) {
        if (visited.contains(node)) {
            return true;
        }
        visited.add(node);
        for (char neighbor : graph.getOrDefault(node, Collections.emptyList())) {
            if (dfs(neighbor, visited, graph)) {
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        System.out.println(hasCycle("A->B B->C C->A"));
    }

}