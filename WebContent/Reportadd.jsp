<html lang="en">
<%@ page import="java.util.*"%>
<head>
<script type="text/javascript" src="https://github.com/rubyeffect/easy_fill/tree/master/lib/easy_fill-0.0.1.min.js"></script>
  <title>Reach Me</title>
  <link rel="stylesheet" type="text/css" href="appointment.css" />
  <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min1.css">
</head>
<Style>
body{
background-image:url("image/h18.jpg");
background-size:cover;
}

</Style>

<%
String id=request.getParameter("id");
String pemail=request.getParameter("pemail");
String pname=request.getParameter("pname");
String doctor=request.getParameter("doctor");
String rfor=request.getParameter("rfor");
String dtype=request.getParameter("dtype");
String tech=request.getParameter("tech");





%>

<% Random r=new Random();
	
	int f=r.nextInt(100000);
	String filekey= ""+f;
	
	%>
	<%
		Random r1=new Random(); 

		 String key2="ABCDEFGH123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>

<body>


  <div class="container">
  
    <h3 style="font-weight: bold; text-align: center;margin-top: 10px">Report Form</h3><br>
  
    <form method="post" action="Repoertadd" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-5" style="padding-bottom:10px;background-image: radial-gradient(circle, #578574, #50a175, #5cbc68, #7ad54e, #a8eb12);;color:#fff;padding:10px;margin-left:30%;width: 38em;margin-bottom: 25px">
        <div class="form-group">
          <label for="full_name" style="color:#fff;"> Patient Name:</label>
          <input type="text" class="form-control" id="full_name" placeholder="Enter Full Name" name="pname" value="<%=pname%>" required>
        </div><br>
       
       
        <div class="form-group">
          <label for="email"  style="color:#fff;">Patient ID:</label>
          <input type="text" class="form-control" id="email" placeholder="Enter Email" name="pemail" value="<%=pemail%>" required>
          
        </div><br>
        
         <div class="form-group">
          <label for="email"  style="color:#fff;">Doctor-ID :</label>
          <input type="text" class="form-control" id="email" placeholder="Enter Email" name="demail" value="<%=doctor %>" required>
          
        </div><br>
        
        
        
         <div class="form-group">
          <label for="email"  style="color:#fff;">Specialised for :</label>
          <input type="text" class="form-control" id="email"  name="spcl" value="<%=dtype %>" required>
          
        </div><br>
        
        <div class="form-group">
          <label for="password1"  style="color:#fff;">Level :</label>
         
          <select id="appointment_for" class="form-control" name="level" required>
         <option value="Serius">Serius</option>
          <option value="small-Fracture">small-Fracture</option>
           <option value="Normal">Normal</option>
        
          </select>
        </div>
        
       <div class="form-group">
          <label for="card_photo"  style="color:#fff;">File key</label>
          <input type="text" class="form-control" placeholder="Enter password" name="filekey" value="<%=t6 %>" required>
        </div>
      
           <div class="form-group">
        
          <input type="hidden" class="form-control" placeholder="Enter password" name="tech" value="<%=tech %>" required>
        </div> -
        <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Add Report File :</label>
          <input type="file" class="form-control" placeholder="Enter password" name="file" required>
        </div>
        <br>
        <center><button  class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Submit</button></center><br>
               
      </div>
    </div>
    <hr>
     
  </form>
</div>
</body>

 


</html>