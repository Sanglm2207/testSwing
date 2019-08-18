
import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lại Minh Sáng
 */
public class DAO {
    public static Connection ketnoi(){
      Connection cn = null;
        String user = "sa";
        String pass = "123";
        String url = "jdbc:sqlserver://localhost:1433;databaseName=Test3";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            cn= DriverManager.getConnection(url, user, pass);
           
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    return cn;
}
}
