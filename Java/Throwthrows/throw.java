class InputWrong extends Exception{//unchecked
    public InputWrong(String Mess){//constructer
    super(Mess);
    
    }
}
class ThrowExample {
    int a=10;
    int b=0;
    void thr(){
        int c=a/b;
        throw new ArithmeticException("Exception");
    }
    public static void main(String[] args) {
        ThrowExample ob=new ThrowExample();
        try{ob.thr();}
        catch(ArithmeticException e){
           System.out.println(e.getMessage());
        }
        System.out.println("This");
    }
}
