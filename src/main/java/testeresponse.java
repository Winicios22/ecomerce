import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;


class TESTE2 { 
    public static void main(String[] args) { 
        try { Class.forName("org.hibernate.dialect.MySQL8Dialect"); 
        Connection con = DriverManager.getConnection("dbc:mysql://localhost:3306/ecomerce?zeroDateTimeBehavior=CONVERT_TO_NULL");
            java.sql.Statement stm = con.createStatement(); 
ResultSet rs = stm.executeQuery("select * from tabela"); 
        while(rs.next()) { System.out.println("Mostrando o valor da primeira coluna do resultado" + rs.getString(1)); } con.close(); 
        } catch(Exception e) { System.out.println("Houve um erro:" + e.getMessage()); } } }