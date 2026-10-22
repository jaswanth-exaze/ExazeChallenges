package challenges;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class DetectDependencyCycleTest {

    @Test
    void CycleExists() {
        assertEquals(true, DetectDependencyCycle.hasCycle("A->B B->C C->A"));
        assertEquals(true, DetectDependencyCycle.hasCycle("A->B B->A"));
        assertEquals(true, DetectDependencyCycle.hasCycle("A->A"));
        assertEquals(true, DetectDependencyCycle.hasCycle("A->B B->C C->D D->B"));
    }

    @Test
    void NoCycleExists() {
        assertEquals(false, DetectDependencyCycle.hasCycle("A->B B->C C->D"));
        assertEquals(false, DetectDependencyCycle.hasCycle("A->B C->D"));
        assertEquals(false, DetectDependencyCycle.hasCycle("A->B B->C C->D D->E"));
    }

    @Test
    void CycleInDisconnectedGraph() {
        assertEquals(true, DetectDependencyCycle.hasCycle("A->B B->C D->E E->D"));
        assertEquals(true, DetectDependencyCycle.hasCycle("A->B B->C C->A D->E"));
    }
}
