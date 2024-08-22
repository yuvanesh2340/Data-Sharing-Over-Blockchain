package servlet;

import imple.Imple;
import inter.Inter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbconn.Dbconn;


import bean.Block;
import bean.Doctordataaddbean;


/**
 * Servlet implementation class Doctordataaddservlet
 */
@WebServlet("/Doctordataaddservlet")
public class Doctordataaddservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Doctordataaddservlet() {
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
		
		String pname=request.getParameter("pname");
		System.out.println("Pname "+pname);
		
		String pemail=request.getParameter("pemail");
		System.out.println("Pemail "+pemail);
		
		String pdate=request.getParameter("pdate");
		System.out.println("Pdate "+pdate);
		
		String gender=request.getParameter("gender");
		System.out.println("Gender "+gender);
		
		String age=request.getParameter("age");
		System.out.println("Age "+age);
		
		String area=request.getParameter("area");
		System.out.println("Area "+area);
		
		String diseas=request.getParameter("disease");
		System.out.println("Disease "+diseas);
		
		String condition=request.getParameter("condition");
		System.out.println("Condition "+condition);
		
		String description=request.getParameter("description");
		System.out.println("Description "+description);
		
		
		HttpSession sess=request.getSession();
		String demail=sess.getAttribute("demailkey").toString();
		System.out.println("DEmail "+demail);
		
		
		String prehash="";
		String afterhash="";
		
		
		String ad="hashfunction";
		Connection con;
		con=Dbconn.create();
		try {
			PreparedStatement pa=con.prepareStatement("SELECT phash,ahash FROM `healthsystem`.`docdataadd` where hname='"+ad+"'");
			ResultSet rs=pa.executeQuery();
			while(rs.next()){
				prehash=rs.getString(1);
				afterhash=rs.getString(2);
				
			}
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(afterhash);
		prehash=afterhash;

		 
		 
		 
		Block genesisBlock = new Block("Hi im the first block", "0");

		String phas=genesisBlock.hash;
		
		Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
		System.out.println("Hash for block 2 : " + secondBlock.hash);
		String aphas=secondBlock.hash;

		
		
		
		Doctordataaddbean ur=new Doctordataaddbean();
		ur.setPname(pname);
		ur.setPemail(pemail);
		ur.setPdate(pdate);
		ur.setPgender(gender);
		ur.setPage(age);
		ur.setPplace(area);
		ur.setPdiseas(diseas);
		ur.setPcondition(condition);
		ur.setPdescription(description);
		ur.setPhash(prehash);
		ur.setAhash(aphas);
		ur.setHname(ad);
		ur.setDemail(demail);
		
		
		Inter in=new Imple();
		int i=in.docdatainter(ur);
		if(i==1){
			response.sendRedirect("doctoradddata.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
		
	}

}
