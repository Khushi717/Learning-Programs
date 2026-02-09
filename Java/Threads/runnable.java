import java.lang.runnable
class thre implements Runnable{
    void me(){
        System.out.println("This is method");
    }
        public void run(){
        System.out.println("This is thread");
    }
    public static void main (String agrs[])throws Exception{
        thre th=new thre();//thread creation
        thre the=new thre();
        Thread tr=new Thread(th);
        tr.start();//automatically calls run method  and start() is in Thread class not in runnable interface 
        th.me();
        tr.sleep(1000);
       tr.start();
    }
}

