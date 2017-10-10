import java.sql.*;
public class  DB
{
	static Connection con;
	static Statement st;
	static ResultSet rs;

	static String dsn="jdbc:mysql://localhost:3306/clickbuy",user="root",password="varun",table="";
	static String driver="com.mysql.jdbc.Driver";

	public DB()
	{
	try{
			Class.forName(driver);
			con=DriverManager.getConnection(dsn,user,password);
			st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	
	}

	public static Connection getConnection()
	{
		try{
			Class.forName(driver);
			return DriverManager.getConnection(dsn,user,password);
		}catch(Exception e){	e.printStackTrace();	}
		
		return null;
	}

	public static void close()
	{
		try{
			if(rs!=null)
				rs.close();
			if(st!=null)
				st.close();
			if(con!=null)
				con.close();
		}catch(Exception e){	e.printStackTrace();	}
	}
}