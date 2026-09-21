package challenges;

public class FormatTicketID {
    public static String FormatTicketID(int ticketNumber) {
        if (ticketNumber <= 999999 && ticketNumber > 0) {

            String ticketString = String.valueOf(ticketNumber);

            String result = "EXZ-";

            String PaddingSting = "0".repeat(6 - ticketString.length()) + ticketString;
            return result + PaddingSting;

        } else {
            return "Invaild Ticket Number";
        }
    }

    public static void main(String[] args) {
        System.out.println(FormatTicketID(4821));
    }
}
