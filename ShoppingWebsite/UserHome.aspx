<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ShoppingWebsite.UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CyberShop</title>

  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale="/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <link href="css/Custom.css" rel="stylesheet" />
    <link href="css/UserHomeStylesheet.css" rel="stylesheet" />

</head>
<body class="bgCustom">
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
            <ul class="nav navbar-nav">
                <li class="activemenu menu"><a href="Default.aspx">HOME</a> </li>
                <li class="menu"><a href="#">ABOUT</a> </li>
                <li class="menu"><a href="#">CONTACT</a> </li>
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
          
    
            <ul class="nav navbar-nav navbar-right nbar">
                <li>
                     <asp:Button ID="btnLogin" CssClass ="btn btn-primary btn-outline navbar-btn menu" runat="server" Text="Login" onClick="btnLogin_Click"/>
                    <asp:Button ID="btnLogout" CssClass ="btn btn-warning btn-outline navbar-btn menu" runat="server" Text="Log out" onClick="btnlogout_Click"/>
                   
                   &nbsp;
                </li>
                
            </ul>
        </div>
      </div>
    </div>
        </div>

        <br />
        <br />
        <br />
        <br />


        &nbsp; &nbsp;
        <asp:Label ID="lblSuccess" runat="server" CssClass="helloUser"></asp:Label>

         <%--footer--%>

    <hr class="hrlineuser"/>
    <footer>
            <div class ="container footer-pos ">
               
                <p class ="pull-right "><a href ="#">&middot; &nbsp; &nbsp; Back to top &nbsp; &nbsp;</a></p>
                <p class ="pull-right "><a href="#"> Admin Login &nbsp; &nbsp;</a></p>  
                <p>&copy;2022 CyberShop &middot; All rights reserved &middot; 
                    <a href ="#"> Terms & Conditions </a>&middot;
                    <a href ="#"> About </a>&middot;<a href ="#"> Contact </a> </p>
            </div>

        </footer>
        
    </form>

</body>
</html>
