// interface ab{
//     void abs();
// }
// class abs implements ab{
//     void abs(){
//         System.out.println("This is functional interrface");
//     }
//     public static void main(Strnig[] arr){
//         abs ob=new abs();
//         ob.abs();
//     }
// }

interface ab{
    void abs(int a);
}
class abs{
    public static void main(String[] arr){
        ab ob=(a)->{for(int i=1;i<=a;i++){
            System.out.println(i);
        }};
        ob.abs(10);
    }
}