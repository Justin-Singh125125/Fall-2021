package com.company;

import java.sql.*;

public class JDBCExample {

    public void displayData(String urlStr, String username, String password) {

        try {
            System.out.println("start the program!");
            Class.forName("com.mysql.jdbc.Driver").getDeclaredConstructor().newInstance();

            Connection conn = DriverManager.getConnection(urlStr, username, password);
            System.out.println("Connected to the MySQL database");

            Statement stmt1 = conn.createStatement();
            ResultSet rs1 = null;
            //Change the table name from Employee to an existing table in your database before run it
            rs1 = stmt1.executeQuery("select * from Employee limit 1");
            while (rs1.next()) {
                System.out.println("ssn:" + rs1.getString(1));
                System.out.println("name:" + rs1.getString(2));
            }
            stmt1.close();

           /*You don't have the following procedures and function in your database,
           so when you run this program directly, you will get error messages.
           You can replace them with your own procedures and functions */

            CallableStatement cstmt = conn.prepareCall("{?= call get_tax(?)}"); //call a function
            cstmt.registerOutParameter(1, Types.NUMERIC);
            cstmt.setString(2, "203341833");
            cstmt.execute();
            System.out.println("tax is " + cstmt.getBigDecimal(1).toString());
            cstmt.close();

            System.out.println("call procedure");
            CallableStatement cstmt2 = conn.prepareCall("call useloop()"); //call a procedure
            cstmt2.execute();
            cstmt2.close();

            System.out.println("run preparedStatement");
            PreparedStatement pstmt =
                    conn.prepareStatement("INSERT INTO Project Values(?, ?, ?, ?)");
            pstmt.setString(1, "SacProject5");
            pstmt.setInt(2, 5);
            pstmt.setString(3, "RVR");
            pstmt.setInt(4, 2);
            pstmt.executeUpdate();
            pstmt.close();

            conn.close();
            System.out.println("Disconnected");


        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}