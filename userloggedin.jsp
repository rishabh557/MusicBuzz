<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MusicBuzz | Welcome! Enjoy your fav Music! </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Boogaloo" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Knewave" rel="stylesheet">
    <link rel="stylesheet" href="assets/stylesheets/bootstrap.min.css">
    <link rel="stylesheet" href="assets/stylesheets/custom.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/title.png">
    <script src="assets/js/model.js"></script>
    <script src="assets/js/user.js"></script>
   <script src="assets/js/songs.js"></script>
   <style>
     .Save{    position: absolute;
               right: 140px;
               margin-top: 15px;
            

     }
     #sidebar{
       margin-left: -20px;
     }
   </style>
</head>  
<body>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
if (session.getAttribute("name")==null)
response.sendRedirect("login.html");
%>
   <!--Header-->
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
                    
                       
                        <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Mood
                          </a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Party Music</a>
                            <a class="dropdown-item" href="#">Love Music</a>
                            <a class="dropdown-item" href="#">Relax Music </a>
                            <a class="dropdown-item" href="#">Chill Music</a>

                        </li>
                        
                      </ul>
                      <form class="form-inline my-2 my-lg-0 mr-auto">
                        <input id="searchSong" class="form-control mr-sm-2 w-70" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Go!</button>
                      </form>
                     
                         <ul class="navbar-nav right">
                               <li class="nav-item">
                                 <a id="Login" class="nav-link" href="userprofile.jsp">
              <!-- Button trigger modal -->
<button type="button" class="btn btn-outline-primary ">
   My Profile <i class="fas fa-sign-in-alt"></i> 
  </button>
          </a>
                </li>
                               <li class="nav-item">
                                    <a class="nav-link" href="logout.jsp"> <!-- Button trigger modal -->
                                      <button type="button" class="btn btn-outline-danger " >
                                          Logout <i class="fas fa-power-off"></i> 
                                        </button>
                                        
                                       
                                      </a>
                                  </li>
                          </ul>                          
                    </div>
                    
                  </nav>
    </div>
    <!-- Content -->
<div id="main" class="marg">
        <div class="row">
            <div class="col-md-9">
                <div class="jumbotron"  style="background: rgba(155,155,155,0.6)">
                    <h1 class="display-5">Welcome Back!</h1>
                    <p class="lead">Welcome back to your favourite Music Application. With Songs from all languages and region.  </p>
                    <hr class="my-4">
                    <p> <h5>View and Update your Profile Now !</h5></p>
                    <a class="btn btn-primary btn-lg" href="userprofile.jsp" role="button">View Profile</a>
                   <!--<a class="btn btn-primary btn-lg" href="userupdate.jsp"" role="button">Update Profile</a> -->
                    
                  </div>
                    <div id="artist">
                    <h2 class="text-center">Artists<hr></h2>
                     <ul class="artist">
                      <li><a href="arijitsingh.html"><img class="rounded-circle"src="assets/images/Artists/Arijit.jpg" alt=""><br> <span>Arijit Singh</span></a></li>
                      <li><a href="atifaslam.html"><img class="rounded-circle"src="assets/images/Artists/atifAslam.jpg" alt=""><br> <span>Atif Aslam</span></a></li>
                      <li><a href="coldplay.html"><img class="rounded-circle"src="assets/images/Artists/coldplayblog-580.jpg" alt=""><br> <span>Coldplay</span></a></li>
                      <li><a href="nucleya.html"><img class="rounded-circle"src="assets/images/Artists/Nucleya.jpg" alt=""><br> <span>Nucleya</span></a></li>
                      <li><a href="honeysingh.html"><img class="rounded-circle"src="assets/images/Artists/Yo_Yo_Honey_Singh.jpg" alt=""><br> <span>Honey Singh</span></a></li>
                     </ul>
                </div>
            <h2 class="text-center">Latest Hits <hr></h2>
          <ul id="songs">

          </ul>
    </div>
    <div class="col-md-3">
        <aside id="sidebar">
            <h2 class="text-center">My Playlist</h2>
            <button id="savePlaylist" class="btn btn-warning Save">Save Playlist</button>
            <!-- <button id="sortPlaylist" class="btn btn-warning">Sort Playlist</button> -->
            <br><br>
            <ul id="playList" class="list-group">

            </ul>
        </aside>
    </div>
   </div> 
 </div>  
    <!--Audio Player-->
 <div id="audioPlayer">
    <audio src="" id="audio"></audio>
    <span id="disp"></span>
    <div class="row">
        <div class="col-lg-3">
            <button class="btn" id="playPause">
                <i class="fas fa-play"></i>
            </button>
            <button class="btn" id="stopSong">
                <i class="fas fa-stop"></i>
            </button>
            <button class="btn" id="previousSong">
                <i class="fas fa-angle-double-left"></i>
            </button>
            <button class="btn" id="nextSong">
                <i class="fas fa-angle-double-right"></i>
            </button>
        </div>
        <div class="col-lg-9">
            <input type="range" value="0" id="slider">
        </div>
    </div>
   </div>
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
                  <a class="navbar-brand" href="#"> <span>Music</span><span class="q2">Buzz</span>  </a>
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