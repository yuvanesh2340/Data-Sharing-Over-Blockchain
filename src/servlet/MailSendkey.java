package servlet;



import imple.Imple;
import inter.Inter;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconn.Dbconn;

import bean.MailBean;
import bean.Patientregbean;

 
/**
 * Servlet implementation class MailSend
 */
@WebServlet("/MailSendkey")
public class MailSendkey extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailSendkey() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String otp=request.getParameter("otp");
		String to=request.getParameter("pid");
		
		
		HttpSession sess=request.getSession();
		sess.setAttribute("pid", to);


		try{
			Connection con=Dbconn.create();
			Statement st=con.createStatement();
			st.executeUpdate("UPDATE hos.patientreg set otp='"+otp+"' where email='"+to+"' ");
			
		}
		catch(Exception e){
		
		System.out.println(e);
		}
		
		
		
			
			
			
			PrintWriter out=response.getWriter();
			 
			Patientregbean ur=new Patientregbean();
			ur.setEmail(to);;
			
			ur.setOtp(otp);;
			
			Inter pm= new Imple ();
			boolean check=pm.check(ur);
			
				if(check=true){
					
				
					String subject="Welcome From public Cloud storage";
					String from ="thohitko@gmail.com";
					String[] mail_list={to};
					String body="your key is "+otp;
					String pass="thatho123";
					
					MailBean.sendFromGMail(from, pass, mail_list, subject, body);
				
					
				 
					RequestDispatcher rd=request.getRequestDispatcher("patientlogin.jsp?email="+to);  
			        rd.include(request, response); 
					    
				}
				else{
					out.println("<body style='background-color:lavender;'>");
					out.println("<html><body><script>alert('key not send Successfully!user not give original mail id' );</script></body></html>");
				 
					RequestDispatcher rd=request.getRequestDispatcher("Error.jsp?email="+to);  
			        rd.include(request, response);
				}

		   
	}

}
