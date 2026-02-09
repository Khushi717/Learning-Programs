class InputWrong extends Exception{//unchecked
    public InputWrong(String Mess){//constructer
    super(Mess);
    }
}

class ThrowExample {
    int a=10;
    int b=0;
    void thr() throws InputWrong{
        if(a>b){
        throw new InputWrong("Exception");
        }
    }
    public static void main(String[] args) {
        ThrowExample ob=new ThrowExample();
        try{ob.thr();}
        catch(InputWrong e){
           System.out.println(e.getMessage());
        }
        System.out.println("This");
    }
}
