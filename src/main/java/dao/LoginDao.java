package dao;
import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import pojo.LoginInfo;

public class LoginDao {

	
		public static boolean isUserValid(LoginInfo userDetails)
		{
			boolean validStatus=false;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","akanksha");
				java.sql.Statement stat1= con.createStatement();
				 ResultSet  rs= stat1.executeQuery("select * from Login where username='"+userDetails.getUserName()+"' AND password= '"+userDetails.getPassword()+"'");
				while(rs.next())
				{
					validStatus=true;
				}
				con.close();
				}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return validStatus;
		}
	

}
