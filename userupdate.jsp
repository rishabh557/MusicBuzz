<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<% String username = request.getParameter("username");%>
<%
try{  
	        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection ("jdbc:mysql://localhost:3306/users","root","rishabh123");
		Statement ps = con.createStatement();
		String strQuery = ("SELECT * FROM register where Username='"+username+"'");
		ResultSet rs = ps.executeQuery(strQuery);
		while(rs.next()){

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MusicBuzz | Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Boogaloo" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Knewave" rel="stylesheet">
        <link rel="stylesheet" href="assets/stylesheets/bootstrap.min.css">
        <link rel="stylesheet" href="assets/stylesheets/custom.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/title.png">
        <script src="assets/js/custom.js"></script>
        <script src="assets/js/songs.js"></script>
        <style>
        #mid{
        height : 36px;
        }
        #mid  p{ font-size: 29px;
            margin-left :10%;             
            }
          .qwert {
          height: 25px;}  
        .marg2{margin-bottom: 26px;
               width:400px;}
        .marg3{min-height: 250px;}
        .cnt{text-align: center;}
        </style>
</head>
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("login.html");
%>
<!-- Header -->
     <div id="head" class="container-fluid">


            <nav class="navbar fixed-top navbar-expand-lg navbar-dark" style="background-color:#2D3246;">
                    <a class="navbar-brand" href="index.html"> <span>Music</span><span class="q2">Buzz</span>  </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                  
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                      <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                           <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                  Browse
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                  <a class="dropdown-item" href="#">Artists</a>
                                  <a class="dropdown-item" href="#">Albums</a>
                                  <a class="dropdown-item" href="#">Playlist</a>
                                  <a class="dropdown-item" href="#">New Releases</a>
                    
                      
                     </li> 
                      </div>
                         <ul class="navbar-nav right">
                               <li class="nav-item">
                                 <a id="Login" class="nav-link" href="logout.jsp">
              <!-- Button trigger modal -->
<button type="button" class="btn btn-outline-danger ">
    Logout<i class="fas fa-sign-in-alt"></i> 
  </button>
          </a>
                </li>
                                               
                    </div>
                    
                  </nav>
     </div> 

<!-- Content -->
    <div id="mid" class="marg qwert">
         <p>Update Your Details:
          <br>
         
                </p>
     </div>  

<div class="marg3">
			<form name="myForm" action="servletuserupdate" method="get" >
			<table class="marg2" align="center">
			<input type="hidden" name="username" value="<%=rs.getString("Username") %>">
			
				<tr>
					<td>Name</td>
					<td>Phone</td>
					<td>Username</td>
				</tr>
				<tr>
					<td><input type="text" name="name" value="<%=rs.getString("Name") %>"></td>
					<td><input type="text" name="phone" pattern="[0-9]{10}" title="10 digit mobile number" value="<%=rs.getString("Phone")%>"> </td>
                     <td><input type="text" name="username" value="<%=rs.getString("Username")%>" ></td>
                     </tr>
                     
                     <tr>
                     <td>Address</td>
				     <td>Country</td>
				     <td>Zip Code</td>
				</tr>
	             <tr>				
				<td><input type="text" name="address"  value="<%=rs.getString("Address")%>" required></td>
				<td><input type="text" name="country" value="<%=rs.getString("Country")%>" ></td>
				<td><input type="text" name="zipcode"  value="<%=rs.getString("Zip")%>" required></td>
				</tr>
				<tr>
				<td>Password</td>
				 <td>City</td>
				</tr>
				<tr>
					<td><input type="text" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" value="<%=rs.getString("Password")%>" ></td>
					<td><input type="text" name="city" value="<%=rs.getString("City")%>" required></td>
				</tr>
				<tr>
				 
				</table>
			<br> <div class="cnt"><input  class="btn btn-primary btn-lg cnt" id="updatebutton" type="submit" value="Update"> </div>
			<br><br>
							
</form>
</div>
<% }
con.close();
} catch (Exception e) {
e.printStackTrace();
}%>
   
  <!-- Footer -->
    <div id="footer">
            <footer class="section footer-classic context-dark bg-image" style="background: #2d3246;">
                <div class="container">
                  <div class="row row-30">
                    <div class="col-md-4 col-xl-5">
                      <div > <br>
                        <p>MusicBuzz is an Online Music Platform Where you can Listen Music Anytime.</p>
                        <!-- Rights-->
                        <p class="rights"><span>©  </span><span class="copyright-year">2018</span><span> </span><span>MusicBuzz</span><span>. </span><span>All Rights Reserved.</span></p>
                      </div>
                    </div>
                    <div class="col-md-4">
                      <h5>Contact:</h5>
                      <br>
                      
                      <dl class="contact-list">
                        <dt>Email:</dt>
                        <dd><a href="mailto:#">Connect@MusicBuzz.com</a></dd>
                      </dl>
                      <dl class="contact-list">
                        <dt>Founder
                        </dt>
                        <dd><a href="#">Rishabh Singh <i class="fab fa-linkedin"></i></a> 
                        </dd>
                      </dl>
                    </div>
                    <div class="col-md-4 col-xl-3">
                      <h5>Links</h5>
                      <br>
                      <ul class="nav-list">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Music Categories</a></li>
                        <li><a href="#">Artists</a></li>
                        <li><a href="#">Latest Hits</a></li>
                        <li><a href="#">Suprise Me!</a></li>
                        <li><a href="#">More...</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
               
              </footer>
    </div>
          
                                                            
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
 <script src="assets/js/bootstrap.min.js"></script>
</body>
</html>