import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Mcart extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession(true);
		String storedQnaInfo = (String) session.getAttribute("Uname");
		String product[] = request.getParameterValues("product");
		String Qty[] = request.getParameterValues("Qty");

		int i = 0;
		try {
			for (int k = 0; k < product.length; k++) {
				String sql = "insert into Mcart(product,Qty,Uname) values('" + product[k] + "','" + Qty[k] + "','"
						+ storedQnaInfo + "')";

				Statement ps = DB.getConnection().createStatement();
				i = ps.executeUpdate(sql);
			}
			if (i == 1) {
				request.setAttribute("message", "Products Sent To Admin Successfully");
				RequestDispatcher rd = request.getRequestDispatcher("monthlycart.jsp");
				rd.forward(request, response);

			} else {
				request.setAttribute("message", "Products not sent");
				RequestDispatcher rd = request.getRequestDispatcher("monthlycart.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "Products not sent");
			RequestDispatcher rd = request.getRequestDispatcher("monthlycart.jsp");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
