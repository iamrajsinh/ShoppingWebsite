<!DOCTYPE html>
<html lang="en">
<head>
  <title>CyberShop</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
        <form id="form1" runat="server">

            
<div>
    <!--navigation bar-->
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation"">
  <div class="container-fluid">
    <div class="navbar-header">

        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    <a class="navbar-brand" href="Default.aspx"><span>
                        <img src="icons/CsLogo.jpg" alt="MyEShoppoing" height="30" /> CybeerShop</span>
                    </a>
    </div>
      
      <div class="collapse navbar-collapse">>
            <ul class="nav navbar-nav">
                <li class="active"><a href="Default.aspx">HOME</a> </li>
                <li><a href="#">ABOUT</a> </li>
                <li><a href="#">CONTACT</a> </li>
                <li><a href="#">BLOG</a> </li>
                <li class="drodown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PRODUCTS<b
                            class="caret"></b></a>
                            <ul class="dropdown-menu ">
                                <li><a href="#">All Products</a></li>
                                <li role="separator" class="divider "></li>
                                <li class="dropdown-header ">Men</li>
                               
                                <li><a href="#">Shirts</a></li>
                                <li><a href="#">Pants</a></li>
                                <li><a href="#">Denims</a></li>
                                <li role="separator" class="divider "></li>
                                <li class="dropdown-header ">Women</li>
                                
                                <li><a href="#">Top</a></li>
                                <li><a href="#">Leggings</a></li>
                                <li><a href="#">Saree</a></li>
                            </ul>
                        </li>
            </ul>
          
    
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
        </div>
      </div>
    </div>


    <!--main image slider-->

    <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

   
    <div class="carousel-inner">
      <div class="item active">
        <img src="images/MainSliderImages/la.jpg" alt="Los Angeles" style="width:100%;">
      </div>

      <div class="item">
        <img src="images/MainSliderImages/chicago.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images/MainSliderImages/ny.jpg" alt="New york" style="width:100%;">

      </div>
    </div>
   
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>



</div>

</form>

</body>
</html>
