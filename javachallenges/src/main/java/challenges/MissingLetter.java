package challenges;

public class MissingLetter {
    public static String MissingLetter(String input){
        if(input.trim().isEmpty()){
            return "invalid input";
        }
        for(int i =0 ;i<input.length()-1;i++){
            char currentChar = input.charAt(i);
            char nextChar = input.charAt(i+1);
            if(currentChar!=nextChar-1){
                return Character.toString(currentChar+1);
            }

        }
        return "no missing letters";
    }
}
