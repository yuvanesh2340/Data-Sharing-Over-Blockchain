package inter;

import bean.Doctordataaddbean;
import bean.Doctorregbean;
import bean.Reportaddbean;
import bean.appoint;

import bean.Patientregbean;



public interface Inter {
	
	public int preg(Patientregbean prb);
	  public boolean plog(Patientregbean prb);

	  public int dreg(Doctorregbean drb);
	  public boolean dlog(Doctorregbean drb);
	  
	  public int appoin(appoint ap);
	  
	  public int docdatainter(Doctordataaddbean ddb);
	  
	  public int report(Reportaddbean rab);
	  
	  public boolean check(Patientregbean re);
	 
}
