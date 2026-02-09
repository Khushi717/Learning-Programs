class sy{
   // static int i=0;
     public static void syn(){
        for(int i=0;i<7;i++){
            System.out.println(i);
        }
    }
}//waiting time nhi then syncronization
class cos extends Thread{ 
    public void run(){
        sy.syn();
    }}
    class sin extends Thread{
        public void run(){
            sy.syn();
        }
    }
    
    class geo{
    public static void main (String agrs[]) throws Exception{
        cos th=new cos();//thread creation
        sin th1=new sin();
        th.start();//automatically calls run method  and start() is in Thread class not in runnable interface
        //th.yield();
        th.join();
        th1.start();
        System.out.println(th.isAlive());
        System.out.println(th1.isAlive());
       // th1.sleep(1000); 
       // System.out.println(th.getPriority());
    }
    }
