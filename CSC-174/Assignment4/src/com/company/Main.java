package com.company;

public class Main {

    public static void main(String[] args) {
   		/*The server installed by IT is 5.7.35.
       For simplicity, I disabled SSL. You need to use this way for your homework assignment.
       In the newer versions,server should be already correctly configured to use SSL */

        String url= "jdbc:mysql://ecs-pd-proj-db.ecs.csus.edu/CSC174044?useSSL=false";
        String username= "CSC174044";
        String password = "Csc134_246209870";
        // It is the same username and password pair that you used in your previous assignment
      /*Example
      String url= "jdbc:mysql://ecs-pd-proj-db.ecs.csus.edu/csc174099?useSSL=false";
      String username="csc174099"
       */

        JDBCExample example = new JDBCExample();
        example.displayData(url,username,password);

    }
}
