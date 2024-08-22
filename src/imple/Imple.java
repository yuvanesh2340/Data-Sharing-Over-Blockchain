package imple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import dbconn.Dbconn;

import bean.Doctordataaddbean;
import bean.Doctorregbean;
import bean.Reportaddbean;
import bean.appoint;

import bean.Patientregbean;
import inter.Inter;

public class Imple implements Inter {
	
	Connection con;

	@Override
	public int preg(Patientregbean prb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `hos`.`patientreg` VALUES(?,?,?,?,?,?,?)");
		 				
		 			    ps.setString(1,prb.getId());
		 				ps.setString(2,prb.getName());
		 				ps.setString(3,prb.getEmail());
		 				ps.setString(4,prb.getPhoeneno());
		 				ps.setString(5,prb.getPassword());
		 				ps.setString(6,prb.getCpass());
		 				ps.setString(7, prb.getOtp());
		 			
		 				reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;

	}

	@Override
	public boolean plog(Patientregbean prb) {
		// TODO Auto-generated method stub
		
		boolean log=false;
		 con=Dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `hos`.`patientreg` where id=?  ");
				ps.setString(1,prb.getId());
				
				
				ResultSet rs=ps.executeQuery();
				log=rs.next();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

	}

	@Override
	public int dreg(Doctorregbean drb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `hos`.`doctorreg` VALUES(?,?,?,?,?,?,?)");
		 				
		 			ps.setString(1,drb.getId());
		 			ps.setString(2,drb.getName());
		 			
		 				ps.setString(3,drb.getEmail());
		 				ps.setString(4,drb.getDtype() );
		 				ps.setString(5,drb.getPassword());
		 				ps.setString(6,drb.getCpass());
		 				ps.setString(7,"Not Activate");
		 				reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;
	
	}

	@Override
	public boolean dlog(Doctorregbean drb) {
		// TODO Auto-generated method stub
		
		boolean log=false;
		 con=Dbconn.create();
		
		 try {
				PreparedStatement ps=con.prepareStatement("SELECT * FROM `hos`.`doctorreg` where id=? and Dtype=? and password=? and status=?");
				ps.setString(1,drb.getId());
				ps.setString(2,drb.getDtype() );
				ps.setString(3,drb.getPassword());
				ps.setString(4,drb.getStatus());
				ResultSet rs=ps.executeQuery();
				log=rs.next();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return log;

		
	}

	@Override
	public int docdatainter(Doctordataaddbean ddb) {
		// TODO Auto-generated method stub
		
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO `healthsystem`.`docdataadd` VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		 				ps.setString(1,ddb.getPname());
		 				ps.setString(2,ddb.getPemail());
		 				ps.setString(3,ddb.getPdate());
		 				ps.setString(4,ddb.getPgender());
		 				ps.setString(5,ddb.getPage());
		 				ps.setString(6,ddb.getPplace());
		 				ps.setString(7,ddb.getPdiseas());
		 				ps.setString(8,ddb.getPcondition());
		 				ps.setString(9,ddb.getPdescription());
		 				ps.setString(10,ddb.getPhash());
		 				ps.setString(11,ddb.getAhash());
		 				ps.setString(12,ddb.getHname());
		 				ps.setString(13,ddb.getDemail());
		 				reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;


	}

	@Override
	public int appoin(appoint ap) {
		int reg=0;
		 
		 con=Dbconn.create();
		 
		 		try {
		 			
		 			PreparedStatement ps=con.prepareStatement("INSERT INTO hos.appointment VALUES(id,?,?,?,?,?,?,?,?,?,?)");
		 				ps.setString(1,ap.getAname());
		 				ps.setString(2,ap.getAemail());
		 				ps.setString(3,ap.getDtype());
		 				ps.setString(4,ap.getMobile());
		 				ps.setString(5,ap.getGender());
		 				ps.setString(6,ap.getAge());
		 				ps.setString(7,ap.getDate());
		 				ps.setString(8,ap.getPic());
		 				ps.setString(9, "Appointment");
		 				ps.setString(10,ap.getDoctor());
		 				
		 				reg=ps.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 		
		return reg;


	}

	@Override
	public int report(Reportaddbean rab) {
		// TODO Auto-generated method stub
		
		
		

			int reg=0;
			 
			 con=Dbconn.create();
			 
			 		try {
			 			
			 			PreparedStatement ps=con.prepareStatement("INSERT INTO hos.report VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			 				ps.setString(1, rab.getPname());
			 				ps.setString(2, rab.getPemail());
			 				ps.setString(3, rab.getDemail());
			 				ps.setString(4, rab.getSpecial());
			 				ps.setString(5, rab.getLevel());
			 				ps.setString(6, rab.getFilename());
			 				ps.setString(7, rab.getFiletype());
			 				ps.setString(8, rab.getFilekey());
			 				ps.setString(9, rab.getFilesize());
			 			
			 				ps.setString(10, rab.getEncrypt());
			 				
			 				ps.setString(11, rab.getPhash());
			 				ps.setString(12, rab.getAhash());
			 				ps.setString(13, rab.getStatus());
			 				ps.setString(14, rab.getMail());
			 				ps.setString(15, rab.getTech());
			 
			 				
			 				reg=ps.executeUpdate();
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 		
			return reg;

	}

	@Override
	public boolean check(Patientregbean re) {
		boolean check=false;
		con=Dbconn.create();
		 
		 try {
			PreparedStatement ps=con.prepareStatement(" SELECT * FROM `hos`.`patientreg` where email='"+re.getEmail()+"' and otp='"+re.getOtp()+"'");
			 ResultSet rs=ps.executeQuery();
				check=rs.next();
		 } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return check;
	}
	
}
