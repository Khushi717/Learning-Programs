class thre extends Thread{
    void me(){
        System.out.println("This is method");
    }
        public void run(){
        System.out.println("This is thread");
    }
    public static void main (String agrs[])throws Exception{
        thre th=new thre();//thread creation
        thre the=new thre();
        th.start();//automatically calls run method  and start() is in Thread class not in runnable interface 
        th.me();
        th.sleep(1000);
        the.start();
    }
}