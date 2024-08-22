package servlet;

import imple.Imple;
import inter.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Doctorregbean;


/**
 * Servlet implementation class Doctorregservelt
 */
@WebServlet("/Doctorregservelt")
public class Doctorregservelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doctorregservelt() {
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
		
		
		
		String id=request.getParameter("did");
		System.out.println("Doc ID :"+id);
		
		String uname=request.getParameter("username");
		System.out.println("Username "+uname);
		
		
		
		String email=request.getParameter("email");
		System.out.println("Email "+email);
		
		String Doc=request.getParameter("Doctor");
		System.out.println("Phoneno "+Doc);
		
		String pass=request.getParameter("password");
		System.out.println("Password "+pass);
		
		String cpass=request.getParameter("password1");
		System.out.println("Con Password "+pass);
		
	
		
		Doctorregbean ur=new Doctorregbean();
		ur.setId(id);
		ur.setName(uname);
	    ur.setDtype(Doc);
		ur.setEmail(email);
		
		ur.setPassword(pass);
		ur.setCpass(cpass);
		
		Inter in=new Imple();
		int i=in.dreg(ur);
		if(i==1){
			response.sendRedirect("doctorlogin.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
