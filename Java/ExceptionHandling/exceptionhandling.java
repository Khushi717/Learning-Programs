import java.util.*;
class exp{
    public static void main (String args[]){
        try {
            Scanner sc=new Scanner(System.in);
            //int arr[]=new int[4];
            int a=sc.nextInt();
            int b=sc.nextInt();
            int c=a/b;
            //int c=10/a;
            //System.out.println(args[0]);
        } catch (ArithmeticException e){
            System.out.println("Arithmetic Division Error-Second number is 0");
        }
        catch(InputMismatchException e){
            System.out.println("Non Integer value");
        }
        // catch (ArrayIndexOutOfBoundsException e){
        //     System.out.println("Error Array");
        // }
        finally{//always works
            System.out.println("Program Finished");
        }
    }
}