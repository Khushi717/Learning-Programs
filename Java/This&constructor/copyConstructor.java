class copi {
    int a;

    // Parameterized constructor
    copi(int a) {
        this.a = a;
    }

    // Copy constructor
    copi(copi ac1) {    
        this.a = ac1.a;
    }
}

 class Main {
    public static void main(String args[]) {
        copi ac = new copi(10);   // normal constructor
        copi ac1 = new copi(ac);  // copy constructor
        System.out.println(ac.a);   // 10
        System.out.println(ac1.a);  // 10
    }
}
