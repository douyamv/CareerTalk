package com.njust;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import util.ConnectSql;


public class talklist extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public talklist() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost( request,  response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		java.sql.Connection  conn=ConnectSql.getConnection();
		java.sql.Statement stmt;
		try {
			stmt = conn.createStatement();
		
		String query="select * from talklist ";
		// out.print("heloo");
		JSONObject jsonObject = new JSONObject();
		java.sql.ResultSet rs=stmt.executeQuery(query);
		while(rs.next())
		{
		        //String s=rs.getString("type");//看准你的字段是不是字符型，不然就不能用getString,根据字段类使用getBoolean等等
			  jsonObject.put("type", rs.getString("type"));
			  //jsonObject.put("time", rs.getString("time"));
			  jsonObject.put("address", rs.getString("address"));
			  jsonObject.put("briefintroduction", rs.getString("briefintroduction"));
			  jsonObject.put("addon", rs.getString("addon"));
			  jsonObject.put("topic", rs.getString("topic"));
			  jsonObject.put("focus", rs.getString("focus"));
			  jsonObject.put("state", rs.getString("state"));
			  jsonObject.put("company", rs.getString("company"));
		       out.print(jsonObject.toString());
		       
		       
		    

		}
		//out.println("<HTML>");
		

		
		out.flush();
		out.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
