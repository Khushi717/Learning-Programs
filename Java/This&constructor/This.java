class Student{
    int roll_no;
    String name;
    int address;
    //constructor
    Student(int roll_no,String name,int address){
        this.roll_no=roll_no;
        this.name=name;
        this.address=address;
    }
}
class BTech_Student extends Student{
        String department;
        int semester;
        //constructor
        BTech_Student(String department,int semester){
              super(12,"Khushi",123);
        this.department=department;
        this.semester=semester;
        }
        void display(){
            System.out.println(name+roll_no+address+department+semester);
        }
        }
class demo{
    public static void main(String args[])
{
    BTech_Student ob=new BTech_Student("CSIT", 3);
    ob.display();
}}