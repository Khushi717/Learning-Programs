
interface ab{
    void abss();
}
class abs{
    abs(String ss){
        System.out.println(ss);
    }
    static void mn(){
        System.out.println("This is method reference");
    }
    public static void main(String[] arr){
        ab ob=abs::new;
        ob.abss("this");
}
}



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public class TestApplication {
public static void main(String[] args) {
Class.forName("com.mysql.cj.jdbc.Driver");
try(Connection conn = DriverManager.getConnection(“jdbc:mysql://localhost:3306/testdb, "guest", "guest123");
Statement stmt = conn.createStatement();		      
 String query = "SELECT id, first, last, age FROM Registration" 
ResultSet rs=stmt.executeQuery(query); 
While(rs.next()){
 System.out.println(rs.getInt() );   	  
      } catch (SQLException e) {
         e.printStackTrace();}}
