package challenges;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;

public class FormatTicketIDTest {
    @Test 
    void InvalidTicketNumber(){
        assertEquals("Invaild Ticket Number",FormatTicketID.FormatTicketID(0));
        assertEquals("Invaild Ticket Number",FormatTicketID.FormatTicketID(1000000));
    }
    @Test 
    void VaildTests(){
       assertEquals("EXZ-000001",FormatTicketID.FormatTicketID(1));
       assertEquals("EXZ-000111",FormatTicketID.FormatTicketID(111));
       assertEquals("EXZ-999999",FormatTicketID.FormatTicketID(999999));
    }
}
