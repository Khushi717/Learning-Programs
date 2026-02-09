//write a program to print counting 1-100 and 100-1 by using different threads..using for loop

class thre extends Thread{
        public void run(){
        for(int i=0;i<101;i++){
            System.out.println(i);
        }
    }
}
    class thre1 extends Thread{
           public void run(){
        for(int i=100;i>=0;i++){
            System.out.println(i);
        }
      }
    }
    class Main{
        public static void main (String agrs[])throws Exception{
        thre th=new thre();//thread creation
        thre the=new thre();
        Thread tr=new Thread(th);
        th.run();
        the.run();
}
    }
 

