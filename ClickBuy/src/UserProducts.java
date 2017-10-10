import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserProducts extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		String storedQnaInfo = (String) session.getAttribute("Uname");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		try {
			int val, tot = 0, count;
			Connection conn = DB.getConnection();
			Statement st = conn.createStatement();
			Enumeration<String> E = null;
			E = request.getParameterNames();

			String str = null;
			while (E.hasMoreElements()) {
				str = (String) E.nextElement();
				System.out.println(str + " : " + request.getParameter(str));

				if (request.getParameter(str) != "") {
					val = Integer.parseInt(request.getParameter(str));
					ResultSet rs1 = st.executeQuery("select adp from imageupload where model='" + str + "'");
					while (rs1.next())
						tot = val * Integer.parseInt(rs1.getString(1));
					ResultSet rs2 = st.executeQuery("select * from userproducts");
					count = 0;
					while (rs2.next())
						count++;
					count++;

					st.executeUpdate("insert into userproducts values(" + count + ",'" + str + "'," + val + "," + tot
							+ ",'" + storedQnaInfo + "',curdate(),curtime())");
				}
			}
			int i = 0;
			if (i == 1) {

				request.setAttribute("message1", "Registered Successfully");
				RequestDispatcher rd = request.getRequestDispatcher("welcomeuser.jsp");
				rd.forward(request, response);

			} else {
				request.setAttribute("message1", "Dates not inserted");
				RequestDispatcher rd = request.getRequestDispatcher("welcomeuser.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			// e.printStackTrace();
			request.setAttribute("message1", "Dates not inserted");
			RequestDispatcher rd = request.getRequestDispatcher("welcomeuser.jsp");
			rd.forward(request, response);
		}

	}

	private String CURDATE() {
		// TODO Auto-generated method stub
		return null;
	}

	private String curdate() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
