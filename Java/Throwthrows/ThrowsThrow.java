class ThrowExample {
    public static void main(String[] args) {
        int age = 15;
        if(age < 18) {
            // explicitly throwing exception
            throw new ArithmeticException("You must be 18 or above to vote!");
        } else {
            System.out.println("You can vote.");
        }
    }
}


// import java.io.*;

// class ThrowsExample {
//     // this method declares that it may throw IOException
//     void readFile() throws IOException {
//         FileReader fr = new FileReader("test.txt"); // may cause IOException
//         BufferedReader br = new BufferedReader(fr);
//         String line = br.readLine();
//         System.out.println(line);
//     }

//     public static void main(String[] args) {
//         ThrowsExample obj = new ThrowsExample();
//         try {
//             obj.readFile(); // caller handles the exception
//         } catch(IOException e) {
//             System.out.println("Exception handled: " + e);
//         }
//     }
// }
