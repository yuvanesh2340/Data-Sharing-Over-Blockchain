<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<style>

/* nav{
 background: linear-gradient(90deg, rgba(90,33,0,1) 0%, rgba(194,199,160,1) 0%, rgba(255,214,0,1) 100%);
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;

}

li {
  float: left;
  padding-right:185px;
}

li a {
  display: block;
  color: black;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}

body {
  background-image: url("image/hos1.jpeg");
 
  background-repeat: no-repeat; 
  background-size: 1750px 820px;
} */












:root {
  --color-primary: #b667ff;
  --color-secondary: #3a0070;
  --color-tertiary: #f999fe;
  --color-light: #fff;
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  outline: 0;
  border: 0;
  text-decoration: none;
  list-style: none;
}

.container {
  width: 86%;
  margin: 0 auto;
}

a {
  color: white;
  font-size: 0.9rem;
}

body {
  font-family: montserrat, sans-serif;
  background: url("https://i.postimg.cc/dtMNrfdq/background.jpg") no-repeat center center/cover;
  width: 100vw;
  height: 100vh;
  overflow: hidden;
}

/* ======= NAVIGATION BAR ======= */

nav {
  position: fixed;
  width: 100%;
  z-index: 10;
}

nav .container {
  display: flex;
  align-items: center;
  justify-content: space-between;
  position: relative;
  padding: 1.5rem 0;
}

nav .container img {
  width: 3.2rem;
}

nav .container input,
nav .container #toggleNav {
  display: none;
}

nav .container ul {
  display: flex;
  gap: 4rem;
}

a {
  transition: all 300ms ease;
}

nav a:hover {
  color: var(--color-tertiary);
}

nav .container ul li a.active {
  font-weight: 700;
}

/* ====== HEADER SECTION ======= */
section {
  display: grid;
  place-items: center;
  width: 100vw;
  height: 100%;
  position: relative;
  top: 3rem;
  left: 0;
  text-align: center;
  color: var(--color-light);
}

section .container h1 {
  font-size: 10rem;
  text-transform: uppercase;
}

section .container h3 {
  font-size: 2rem;
  text-transform: uppercase;
  margin-bottom: 3rem;
}

section .container input[type="search"] {
  background: transparent;
  border: 1px solid var(--color-light);
  border-radius: 2rem;
  padding: 0.7rem 1.5rem;
  color: var(--color-light);
  letter-spacing: 0.1rem;
  margin-bottom: 2rem;
}

section .container input[type="search"]::placeholder {
  color: var(--color-light);
  letter-spacing: 0.1rem;
}

section .container p {
  letter-spacing: 0.06rem;
  font-size: 0.8rem;
  line-height: 1.7;
  font-weight: 300;
  max-width: 40rem;
  margin: 0 auto;
  margin-bottom: 3rem;
}

section .container a {
  background: linear-gradient(
    to right,
    var(--color-secondary),
    var(--color-primary)
  );
  padding: 0.7rem 3rem;
  margin: 0.4rem;
  border-radius: 2rem;
  position: relative;
  transition: all 300ms ease;
}

section .container a::before {
  content: "";
  position: absolute;
  top: 0;
  left: -0.5rem;
  width: 100%;
  height: 100%;
  border-radius: 2rem;
  border-left: 5px solid var(--color-primary);
  z-index: 0;
  transition: all 300ms ease;
}

section .container a:hover {
  background: linear-gradient(
    to left,
    var(--color-secondary),
    var(--color-primary)
  );
}

/* ======= MEDIA QUERY FOR SMALLER SCREENS ======= */
@media screen and (max-width: 700px) {
  /* NAVIGATION BAR */
  nav .container {
    width: 100%;
    padding: 1rem 0;
    background: var(--color-secondary);
  }

  nav img {
    margin-left: 1rem;
  }

  /* SHOW NAVIGATION MENU ON CHECKED */
  nav .container #showNav:checked ~ ul {
    display: block;
  }

  nav .container #toggleNav {
    display: inline-block;
    color: var(--color-light);
    font-size: 2rem;
    margin-right: 1rem;
    cursor: pointer;
    transition: all 300ms ease;
  }

  nav .container #toggleNav:hover {
    color: var(--color-tertiary);
  }

  nav .container ul {
    display: none;
    position: absolute;
    top: 100%;
    width: 100%;
  }

  nav .container li {
    text-align: center;
    background: var(--color-primary);
    padding: 2rem 0;
    transition: all 300ms ease;
    cursor: pointer;
  }

  nav .container li:hover {
    background: var(--color-tertiary);
  }

  section .container h1 {
    font-size: 5.3rem;
  }

  /* HEADER SECTION */
  section .container h3 {
    font-size: 1.5rem;
  }

  section .container a {
    padding: 1rem 2rem;
  }
}

	

</style>


</head>
<body>
<!-- <nav class="navbar navbar-light bg-light">
<ul class="container-fluid justify-content-start">
<li><a href="main.jsp" class="btn btn-outline-info me-2">Patient</a></li>
<li><a href="doctorlogin.jsp" class="btn btn-outline-info me-2">Doctor</a></li>
<li><a href="adminlogin.jsp" class="btn btn-outline-info me-2">Management</a></li>
<li><a href="techlog.jsp" class="btn btn-outline-info me-2">Technician</a></li>



</ul>
</nav> -->









   <link rel="stylesheet" href="./fontawesome-free-5.15.3-web/css/all.min.css">
</head>
<body>
    <nav>
        <div class="container">
                <img src="https://i.postimg.cc/K8TZQwpJ/tutorial-logo.png">
                <input type="checkbox" id="showNav">
                <label for="showNav" id="toggleNav"><i class="fas fa-bars"></i></label>
            <ul>
                <li><a href="main.jsp" class="active">Patient</a></li>
                <li><a href="doctorlogin.jsp">Doctor</a></li>
                <li><a href="adminlogin.jsp">Management</a></li>
                <li><a href="techlog.jsp">Technician</a></li>
            </ul>
        </div>
    </nav>

    <section>
        <div class="container">
        <h1>Healthcare</h1>
        <h3>System</h3>

       	
        <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sequi commodi sed sunt est veritatis saepe doloremque dicta ducimus qui impedit harum fugiat, accusamus cupiditate dolores. Molestias ex aliquam facilis ut.</p>
        
        
        </div>
    </section>

</body>
</html>