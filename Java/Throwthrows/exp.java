class exp extends Exception{
    exp(String mess){
        super(mess);
    }
}
class Main{
    void m(int a, int b) throws exp{
        if(b==0){
            throw new exp("Exception found!");
        }
    }
    public static void main(String[] args) {
        Main ob=new Main();
        try{ob.m(3,0);}
        catch(exp e){
            System.out.println(e.getMessage());
        }
    }
}