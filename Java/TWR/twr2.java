//manual resouces implements auto closable 
//no need to put finally block with TWR
//creating manual
class at implements AutoCloseable{
    //override close method of AutoCloseable interface
    public void close(){
        System.out.println("This is close");
    }
}
class TWR{
    public static void main(String args[]){
        try(at ob=new at()){//automatically understands that we are calling method of class 'at' and there is not need to call close method
            System.out.println("This is try block");
        } catch (Exception e) {
        }
    }
}