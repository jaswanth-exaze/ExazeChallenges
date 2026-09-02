package challenges;

public class WordCount {
    public static int Word_count(String input){
        input=input.trim();
        if(input.isEmpty()){
            return 0;
        }
        else{
            return input.split("\\s+").length;
        }
    }
}
