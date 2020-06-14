
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

@WebServlet("/bookappointment")
public class bookappointment extends HttpServlet {

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
			String username = request.getParameter("user_name");
			String email = request.getParameter("user_email");
			String phonenumber = request.getParameter("user_num");
			String appoinmentfor[] = request.getParameterValues("appointment_for");
			String purpose = "";
			String date = request.getParameter("date");
			String time = request.getParameter("time");

			String strQuery = "SELECT COUNT(*) FROM users where phonenumber='" + phonenumber + "'";
			ResultSet rs = st.executeQuery(strQuery);
			rs.next();
			String Countrow = rs.getString(1);// out.println(Countrow);
			if (Countrow.equals("0")) {
				int i = st.executeUpdate(
						"INSERT INTO `24ksaloon`.`users` (`username`, `phonenumber`, `email`,`role`) VALUES ('"
								+ username + "','" + phonenumber + "','" + email + "','user');");

				try {

					for (int j = 0; j < appoinmentfor.length; j++) {
						purpose += appoinmentfor[j] + ",";

					}

					i = st.executeUpdate(
							"INSERT INTO `24ksaloon`.`bookings` (`username`, `phonenumber`, `purpose`, `time`, `date`) VALUES ('"
									+ username + "','" + phonenumber + "','" + purpose + "','" + time + "','" + date
									+ "');");
					HttpSession session = request.getSession();
					session.setAttribute("user_phonenumber", phonenumber);
					request.getRequestDispatcher("your bookings.jsp").forward(request, response);
					// out.println("your booking has been recorded our executive
					// will call u soon! ");
					// out.print("You are successfully registered...");

				} catch (Exception e) {
					e.printStackTrace();
				}
			} else {
				try {

					for (int j = 0; j < appoinmentfor.length; j++) {
						purpose += appoinmentfor[j] + ",";

					}

					int i = st.executeUpdate(
							"INSERT INTO `24ksaloon`.`bookings` (`username`, `phonenumber`, `purpose`, `time`, `date`) VALUES ('"
									+ username + "','" + phonenumber + "','" + purpose + "','" + time + "','" + date
									+ "');");
					HttpSession session = request.getSession();
					session.setAttribute("user_phonenumber", phonenumber);
					request.getRequestDispatcher("your bookings.jsp").forward(request, response);
					// out.println("your booking has been recorded our executive
					// will call u soon! ");
					// out.print("You are successfully registered...");

				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			/// out.print("You are successfully registered...");

		} catch (Exception e) {
			e.printStackTrace();
		}

		out.close();
	}

}
