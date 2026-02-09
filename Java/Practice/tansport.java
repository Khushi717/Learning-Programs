interface ss{
    default void chonchu();
    default void stop(String vehicle){
        System.out.println(vehicle+" stopped");
        start(vehicle);
    }
    private void start(String vehicle){
        System.out.println(vehicle+" started");
    }
   
}
// class cars implements ss{
//     public void chonchu(){
//         System.out.println("hi");
//     }
// }
// class bikes implements ss{
    
// }
// class buses implements ss{
    
// }
class main implements ss{
    public  static  void main(String arg[]){
        ss ob=new main();
        ob.chonchu();
    }
}