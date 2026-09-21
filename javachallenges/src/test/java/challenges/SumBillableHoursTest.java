package challenges;

import static org.junit.jupiter.api.Assertions.assertAll;
import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class SumBillableHoursTest {
    @Test 
    void Vaild(){
        assertEquals(32,SumBillableHours.SumBillableHours("7 6 7 5 7"));
        assertEquals(0,SumBillableHours.SumBillableHours("0"));
        assertEquals(21,SumBillableHours.SumBillableHours("7  7    7"));
    }
}
