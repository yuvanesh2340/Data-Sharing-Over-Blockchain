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



<body>

<% String email=session.getAttribute("pemail").toString(); %>
  <div class="container">
  
    <h3 style="font-weight: bold; text-align: center;margin-top: 10px">Appointment Form</h3><br>
  
    <form method="post" action="apppointment" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-5" style="padding-bottom:10px;background-color: #333;color:#fff;padding:10px;margin-left:30%;width: 38em;margin-bottom: 25px">
        <div class="form-group">
          <label for="full_name" style="color:#fff;"> Patient Name:</label>
          <input type="text" class="form-control" id="full_name" placeholder="Enter Full Name" name="name" required>
        </div>
        <div class="form-group">
          <label for="email"  style="color:#fff;">Patient ID:</label>
          <input type="text" class="form-control" id="email" placeholder="Enter Email" name="email" value="<%=email %>" required>
          
        </div>
        
        <div class="form-group">
          <label for="password1"  style="color:#fff;">Doctor Type:</label>
         
          <select id="appointment_for" class="form-control" name="csize" required>
         <option value="Cardiologist">Cardiologist</option>
          <option value="Radiologist">Radiologist</option>
           <option value="Urologist">Urologist</option>
            <option value="Pedaitrician">Pedaitrician</option>
             <option value="Nueralogist">Nueralogist<option>
         
          </select>
        </div>
         <div class="form-group">
          <label for="email"  style="color:#fff;">Mobile Number:</label>
          <input type="number" class="form-control" id="email" placeholder="Enter Mobile Number" name="number" required>
          
        </div><br><br>
        <div class="form-group">
          <label for="password1"  style="color:#fff;">Gender</label>
         
         <input type="radio" name="gender" value="male">Male
                  <input type="radio" name="gender" value="female">Female

        </div><br>
        <div class="form-group">
          <label for="address"  style="color:#fff;">Age</label>
          <input type="number" class="form-control" id="address" placeholder="age" name="age" required>
        </div>
         
        
        <div class="form-group">
          <label for="address"  style="color:#fff;">Date :</label>
          <input type="date" class="form-control" id="address"  name="date" required>
        </div>
        
        <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Upload Patient photo:</label>
          <input type="file" class="form-control" placeholder="Enter password" name="photo" accept="image/*" onchange="preview_image(event)" required>
        </div>
        <div class="form-group">
          <label  style="color:#fff;">Your selected File:</label><br>
          <img src="" id="output_image"/ height="200px">
        </div>
        <center><button  class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Register</button></center><br>
               
      </div>
    </div>
    <hr>
     
  </form>
</div>
</body>

<script type='text/javascript'>
  function preview_image(event)
  {
    var reader = new FileReader();
    reader.onload = function()
    {
      var output = document.getElementById('output_image');
      output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
  }
  </script>


</html>