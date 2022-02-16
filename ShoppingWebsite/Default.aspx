<!DOCTYPE html>
<html lang="en">
<head>
  <title>CyberShop</title>

  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale="/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="css/Custom.css" rel="stylesheet" />

    <link href="css/LandingStylesheet.css" rel="stylesheet" />
</head>
<body  class="bgCustom">
        <form id="form1" runat="server">

            
<div>
       <%--navigation bar--%>

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation"">
  <div class="container-fluid">
    <div class="navbar-header">

        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    <a class="navbar-brand" href="Default.aspx">
                         <span class="brandName">CyberShop</span>
                    </a>
    </div>
      
      <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav ">
                <li class="activemenu menu"><a href="Default.aspx"> <p class="menuh">HOME</p></a> </li>
                <li  class="menu"><a href="#">ABOUT</a> </li>
                <li  class="menu"><a href="#">CONTACT</a> </li>
                <li class="dropdown menu"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PRODUCTS<b
                            class="caret"></b></a>
                            <ul class="dropdown-menu ">
                                <li><a href="#">All Products</a></li>
                                <li role="separator" class="divider "></li>
                                <li class="dropdown-header ">Product category 1</li>
                               
                                <li><a href="#">ProSubCat 1</a></li>
                                <li><a href="#">ProSubCat 2</a></li>
                                <li><a href="#">ProSubCat 3</a></li>
                                <li role="separator" class="divider "></li>
                                <li class="dropdown-header ">Product category 2</li>
                                
                                <li><a href="#">ProSubCat 1</a></li>
                                <li><a href="#">ProSubCat 2</a></li>
                                <li><a href="#">ProSubCat 3</a></li>
                            </ul>
                        </li>
            </ul>
          
    
            <ul class="nav navbar-nav navbar-right">
                <li  class="menu"><a href="SignUp.aspx"><span class="glyphicon glyphicon-user btn-primary btn-outline"></span> Sign Up</a></li>
                <li class="menu"><a href="SignIn.aspx"><span class="glyphicon glyphicon-log-in btn-primary btn-outline"></span> Login</a></li>
            </ul>
        </div>
      </div>
    </div>
    <br />
    <br />
    <br />
<br />


    <%--main image slider--%>

    <div class="container" >

  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

   
    <div class="carousel-inner">
      <div class="item active">
          <img src="images/MainSliderImages/iphoneDarkBlue1.jpg" alt="Iphone 13 Midnight Blue" style="width:100%;">
          <div class="carousel-caption">
          <h3>Iphone 13 Midnight</h3>
          <p>Midnight blue is a dark shade of blue named for its resemblance to the identifiably blue color of a moonlit night sky on or near the night of a full moon.</p>
        </div>
      </div>

      <div class="item">
          <img src="images/MainSliderImages/iphoneLightBlue1.jpg"  alt="Iphone 13 Sierra Blue" style="width:100%;">
          <div class="carousel-caption">
          <h3>Iphone 13 Blue</h3>
          <p>It's a much lighter and brighter shade of blue than the Pacific blue of last year, which in some lighting would be so similar to graphite you could barely tell them apart.</p>
        </div>
      </div>
    
      <div class="item">
          <img src="images/MainSliderImages/iphoneAll13.jpg"  alt="And More" style="width:100%;">
          <div class="carousel-caption">
          <h3></h3>
          <p><a class="btn btn-lg btn-primary" id="btnCB" href="#" role="button">BUY NOW</a></p>
        </div>

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

     <%--    featured category tiles--%>
        <hr class="hrlinelanding"/>

    <h2 class="shopnow">Shop now :</h2>
    
    <div class="container center">
        <div class="row ">
            <div class="col-lg-4">

                <div class="card">

                <img class="img-circle " src="images/featuredcategory/graphicsCardCategory.jpg" alt="thumb" width="140" height="140" />
                <h2 class="catname">
                    Graphics Cards</h2>
                <p>
                    </p>
                <p>
                    <a class="btn btn-default " id="btnvm1" href="#" role="button">Explore &raquo;</a></p>
            </div>
                </div>
                



            <div class="col-lg-4">

                <div class="card">
                <img class="img-circle " src="images/featuredcategory/mobileCategory.png" alt="thumb" width="140" height="140" />
                <h2 class="catname">
                    Mobile Phones</h2>
                <p>
                    </p>
                <p>
                    <a class="btn btn-default " id="btnvm2"  href="#" role="button">Explore &raquo;</a></p>
                   </div>
            </div>


            <div class="col-lg-4">

                <div class="card">
                <img class="img-circle " src="images/featuredcategory/accessoriesCategory.jpg" alt="thumb" width="140" height="140" />
                <h2 class="catname">
                    Accesories</h2>
                <p>
                    </p>
                <p>
                    <a class="btn btn-default "  id="btnvm3" href="#" role="button">Explore &raquo;</a></p>

                    </div>
            </div>


            
        </div>

        </div>

  
    </div>
</form>
      <%--footer--%>

    
    <footer class="footer-pos">
            <div class ="container">
               
                <p class ="pull-right "><a href ="#">&middot; &nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class ="pull-right "><a href="#"> Admin Login &nbsp; &nbsp;</a></p>  
                <p>&copy;2022 CyberShop &middot; All rights reserved &middot; 
                    <a href ="#"> Terms & Conditions </a>&middot;
                    <a href ="#"> About </a>&middot;<a href ="#"> Contact </a> </p>
            </div>

        </footer>

</body>
</html>
