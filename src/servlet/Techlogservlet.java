package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Techlogservlet
 */
@WebServlet("/Techlogservlet")
public class Techlogservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Techlogservlet() {
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
		
		String tname=request.getParameter("username");
		System.out.println("Username "+tname);
		
		HttpSession sess=request.getSession();
		sess.setAttribute( "tech", tname);
		
		
		String pass=request.getParameter("password");
		System.out.println("password "+pass);
		
			
		
		if(tname.equals("Xray") && pass.equals("Xray")) {
				
			response.sendRedirect("techmain.jsp");
			
		}
		else if(tname.equals("Scan") && pass.equals("Scan")) {
			
			response.sendRedirect("techmain.jsp");
			
		}
		
        else if(tname.equals("Btest") && pass.equals("Btest")) {
			
			response.sendRedirect("techmain.jsp");
			
		}
		
		
		
	else{
		response.sendRedirect("error.jsp");
	}
		
	}

		
		
	

}
