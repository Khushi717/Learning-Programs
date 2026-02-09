import java.util.*;
class weekdays {
    public static void main(String[] args) {
    Scanner sc=new Scanner(System.in);
    String a=sc.nextLine();
    Integer num=switch(a){
        case "Sunday","Khushi"->1;
        case "Monday"->2;
        case "Tueday"->3;
        case "Wednesday"->4;
        case "Thursday"->5;
        case "Friday"->6;
        case "Saturday"->7;
        default->throw new IllegalStateException("this is wrong input");
    };
    System.out.println(num);
    String s="""
            this is the last statement.""";
}
}