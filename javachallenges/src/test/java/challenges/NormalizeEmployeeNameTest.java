package challenges;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class NormalizeEmployeeNameTest {
    @Test
    void testEmpty(){
        assertEquals(NormalizeEmployeeName.NormalizeEmployeeName(""),  "invalid input");
        assertEquals(NormalizeEmployeeName.NormalizeEmployeeName(" "),  "invalid input");
        assertEquals(NormalizeEmployeeName.NormalizeEmployeeName("  "),  "invalid input");
    }
    @Test
    void test(){
        assertEquals(NormalizeEmployeeName.NormalizeEmployeeName("jaswanth kumar"), "Jaswanth Kumar");
    }
    @Test
    void testNameswithWhitespaces(){
        assertEquals(NormalizeEmployeeName.NormalizeEmployeeName("jasWanth     kumar"), "Jaswanth Kumar");
    }
}
