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

import com.mysql.cj.xdevapi.Statement;

@WebServlet("/addmember")
public class addmember extends HttpServlet {

	/**
	 * @return
	 * @see HttpServlet#HttpServlet()
	 */

	/**
	 * * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 * response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// lokesh write your logic here
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/24ksaloon", "root",
					"Karthik_1999");
			java.sql.Statement st = con.createStatement();
			String username = request.getParameter("username");
			String phonenumber = request.getParameter("phonenumber");
			String email = request.getParameter("email");
			String role = request.getParameter("role");

			String strQuery = "SELECT COUNT(*) FROM users where phonenumber='" + phonenumber + "'";
			ResultSet rs = st.executeQuery(strQuery);
			rs.next();
			String Countrow = rs.getString(1);// out.println(Countrow);
			if (Countrow.equals("0")) {
				int i = st.executeUpdate(
						"INSERT INTO `24ksaloon`.`users` (`username`, `phonenumber`, `email`, `role`) VALUES ('"
								+ username + "','" + phonenumber + "','" + email + "','" + role + "');");

				out.print("You are successfully registered...");
				request.getRequestDispatcher("viewusers.jsp").forward(request, response);
			} else {
				int i = st.executeUpdate("UPDATE `24ksaloon`.`users` SET `username` = '" + username + "', `email` = '"
						+ email + "', `role` = '" + role + "' WHERE (`phonenumber` = '" + phonenumber + "');");

				out.print("Existing user has been modified and saved successfully...!");
				request.getRequestDispatcher("viewusers.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		out.close();
	}

}
