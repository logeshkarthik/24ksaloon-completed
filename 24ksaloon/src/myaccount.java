
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/myaccount")
public class myaccount extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String phonenumber = request.getParameter("phonenumber");

		try {

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/24ksaloon", "root",
					"Karthik_1999");

			PreparedStatement ps = con.prepareStatement(
					"SELECT username,phonenumber,email,role FROM users WHERE phonenumber = '" + phonenumber + "' ;");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				String userEmail = rs.getString("email");
				String userPhone = rs.getString("phonenumber");
				String Role = rs.getString("role");

				if (userPhone.equals(phonenumber) && Role.equals("user")) {
					// request.getRequestDispatcher("user.jsp").forward(request,
					// response);
					HttpSession session = request.getSession();
					session.setAttribute("user_phonenumber", userPhone);
					response.sendRedirect("your bookings.jsp");
					// response.sendRedirect("wrongpasswordor user name.jsp");
					// out.println("Welcome " + password);

				} else if (userPhone.equals(phonenumber) && Role.equals("admin")) {

					HttpSession session = request.getSession();
					session.setAttribute("user_phonenumber", userPhone);
					response.sendRedirect("admin.jsp");

					// request.getRequestDispatcher("user.jsp").forward(request,
					// response);
					// response.sendRedirect("user.jsp");
					// response.sendRedirect("wrongpasswordor user name.jsp");
					// out.println("Welcome " + password);

				}

			}
		} catch (Exception e) {

			e.printStackTrace();

		}
	}

}
