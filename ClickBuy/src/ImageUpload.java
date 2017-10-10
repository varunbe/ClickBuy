import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class ImageUpload extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String itemname = null;
		String price = null;
		String discount = null;
		String image = null;
		String model = null;

		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload sfileUpload = new ServletFileUpload(factory);
		System.out.println((new StringBuilder()).append("Multi part request :  ")
				.append(ServletFileUpload.isMultipartContent(request)).toString());
		if (!ServletFileUpload.isMultipartContent(request)) {

		} else if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> items = sfileUpload.parseRequest(request);

				FileItem item_itemname = (FileItem) items.get(0);
				itemname = item_itemname.getString();

				FileItem item_price = (FileItem) items.get(1);
				price = item_price.getString();

				FileItem item_discount = (FileItem) items.get(2);
				discount = item_discount.getString();

				double newprice = Integer.parseInt(price)
						- (Integer.parseInt(price) * (Double.parseDouble(discount) / 100));
				System.out.println("After Discount : " + newprice);
				String adp = "" + newprice;
				adp = adp.substring(0, adp.indexOf("."));

				FileItem item_image = (FileItem) items.get(3);
				image = item_image.getString();
				FileItem item_model = (FileItem) items.get(4);
				model = item_model.getString();

				String UPLOAD_DIRECTORY = request.getRealPath("") + "\\uploads\\";

				for (FileItem item : items) {
					if (!item.isFormField()) {
						image = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + image));
					}
				}

				String sql = "insert into ImageUpload(itemname,price,discount,adp,image,model,date,time)"
						+ "values(?,?,?,?,?,?,curdate(),curtime())";
				PreparedStatement ps = DB.getConnection().prepareStatement(sql);

				ps.setString(1, itemname);
				ps.setString(2, price);
				ps.setString(3, discount);
				ps.setString(4, adp);
				ps.setString(5, image);
				ps.setString(6, model);

				int i = ps.executeUpdate();
				request.setAttribute("message", "Product Uploaded Successfully");
			} catch (Exception ex) {

				request.setAttribute("message", "Product Upload Failed due to " + ex);
			}

		} else {
			request.setAttribute("message", "Product Upload Failed");
		}

		request.getRequestDispatcher("/ImageUpload.jsp").forward(request, response);

	}
}
