import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String Uid = request.getParameter("Uid");
		String Uname = request.getParameter("Uname");
		String pwd = request.getParameter("pwd");
		String Utype = request.getParameter("Utype");
		String mobile = request.getParameter("mobile");
		String eid = request.getParameter("eid");
		String address = request.getParameter("address");
		String opt = request.getParameter("opt");
		String ans = request.getParameter("ans");

		int i = 0;
		try {
			String sql = "insert into Register(Uid,Uname,pwd,Utype,mobile,eid,address,opt,ans) values('" + Uid + "','"
					+ Uname + "','" + pwd + "','" + Utype + "','" + mobile + "','" + eid + "','" + address + "','" + opt
					+ "','" + ans + "')";
			Statement ps = DB.getConnection().createStatement();
			i = ps.executeUpdate(sql);
			if (i == 1) {
				/*
				 * String sql1 ="insert into CreditTransaction(Uid) values("+Uid+")"; Statement
				 * ps1=DB.getConnection().createStatement(); i=ps1.executeUpdate(sql1);
				 * if(i==1){
				 */
				request.setAttribute("message", "Registered Successfully");
				RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
				rd.forward(request, response);
				// }
			} else {
				request.setAttribute("message", "Registration Faild.");
				RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "Registration Faild.");
			RequestDispatcher rd = request.getRequestDispatcher("Register.jsp");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
