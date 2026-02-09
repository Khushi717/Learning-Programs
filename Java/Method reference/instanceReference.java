interface ab{
    String abss(String s);
}
class abs{
        abs(String ss){
        System.out.println(ss);
    }
    static void mn(){
        System.out.println("This is method reference");
    }
    public static void main(String[] arr){
        ab ob=String::toUpperCase;
        System.out.println(ob.abss("this"));
}
}