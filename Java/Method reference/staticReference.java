interface ab{
    void abss();
}
class abs{
    static void mn(){
        System.out.println("This is method reference");
    }
    public static void main(String[] arr){
        ab ob=abs::mn;
        ob.abss();
}
}