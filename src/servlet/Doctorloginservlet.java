package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Doctorregbean;


import imple.Imple;
import inter.Inter;

/**
 * Servlet implementation class Doctorloginservlet
 */
@WebServlet("/Doctorloginservlet")
public class Doctorloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doctorloginservlet() {
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
		System.out.println("username:"+id);
		
		HttpSession sess=request.getSession();
		sess.setAttribute( "demail",id);
		
		String dtype=request.getParameter("Doctor");
		HttpSession session=request.getSession();
		session.setAttribute( "dtype",dtype);
		
		String pass=request.getParameter("password");
		System.out.println("password:"+pass);
		
		
		
		
		String status="Activate";
		Doctorregbean ur=new Doctorregbean();
		ur.setId(id);
		ur.setDtype(dtype);
		ur.setPassword(pass);
		ur.setStatus(status);
		
		Inter in=new Imple();
		boolean log=in.dlog(ur);
		
		if(log==true){
			response.sendRedirect("doctormainpage.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
