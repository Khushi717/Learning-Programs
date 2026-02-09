interface ab{
    void abss();
}
class abs{
     void mn(){
        System.out.println("This is method reference");
    }
    public static void main(String[] arr){
        abs obj=new abs();
        ab ob=obj::mn;
        ob.abss();
}
}