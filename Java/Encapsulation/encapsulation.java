class PaymentGateway{
    void pay(double amount){
        System.out.println("PaymentGate1");
        System.out.println(amount);
    }
    void pay(double amount, String promoCode){
        System.out.println("PaymentGate2");
    }
}
class DebitCardPayment extends PaymentGateway{
    void pay(double amount){
        System.out.println("DebitCardPayment");
        super.pay(300);//call parent from child class
    }
}
class UPIPayment extends PaymentGateway{
    void pay(double amount){
        System.out.println("UPIPayment");
    }
}
class test2{
public static void main(String args[]){
    PaymentGateway obj1=new DebitCardPayment();
    obj1.pay(100);
    //obj1.pay(120,'ABC');
}
}