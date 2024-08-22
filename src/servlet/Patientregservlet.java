package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Patientregbean;


import imple.Imple;
import inter.Inter;

/**
 * Servlet implementation class Patientregservlet
 */
@WebServlet("/Patientregservlet")
public class Patientregservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Patientregservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pid=request.getParameter("pid");
		System.out.println("Patient ID : "+pid);
		
		String uname=request.getParameter("username");
		System.out.println("Username "+uname);
		
		String email=request.getParameter("email");
		System.out.println("Email "+email);
		
		String phno=request.getParameter("phonenumber");
		System.out.println("Phoneno "+phno);
		
		String pass=request.getParameter("password");
		System.out.println("Password "+pass);
		
		String cpass=request.getParameter("cpassword");
		System.out.println("Password "+cpass);
		
		
		
		Patientregbean ur=new Patientregbean();
		ur.setId(pid);
		ur.setName(uname);
		ur.setPhoeneno(phno);
		ur.setEmail(email);
		ur.setPassword(pass);
		ur.setCpass(cpass);
		ur.setPid(pid);
		
		Inter in=new Imple();
		int i=in.preg(ur);
		if(i==1){
			response.sendRedirect("main.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
