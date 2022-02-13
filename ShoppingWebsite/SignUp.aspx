<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ShoppingWebsite.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up | CyberShop</title>

  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale="/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="css/Custom.css" rel="stylesheet" />

    <link href="css/SignupStylesheet.css" rel="stylesheet" />

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
            <ul class="nav navbar-nav">
                <li  class="menu"><a href="Default.aspx">HOME</a> </li>
                <li  class="menu"><a href="#">ABOUT</a> </li>
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
          
    
            <ul class="nav navbar-nav navbar-right">
                <li class="activemenu menu"><a href="SignUp.aspx"><span class="glyphicon glyphicon-user btn-primary btn-outline"></span> Sign Up</a></li>
                <li class="menu"><a href="SignIn.aspx"><span class="glyphicon glyphicon-log-in btn-primary btn-outline"></span> Login</a></li>
            </ul>
        </div>
      </div>
    </div>


        </div>

        <%--SignUp Form--%>

        <div class ="center-page">
        <div class="card">
        <div class ="container ">
            <div class ="form-horizontal ">

            <div class="col-xs-11">
            <h2  class="signup-head">Sign Up</h2>
             
            </div>

            <div class="col-xs-11">
            <asp:TextBox ID="tbUsername" runat="server" style="margin-left: 0px"   CssClass="form-control" placeholder="Enter your username "></asp:TextBox>
                <br />
            </div>

            

            <div class="col-xs-11">
            <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
                <br />
            </div>



            <div class="col-xs-11">
            <asp:TextBox ID="tbCPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm your password"></asp:TextBox>
                <br />
            </div>


            <div class="col-xs-11">
            <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                <br />
                
            </div>


            <div class="col-xs-11">
            <asp:TextBox ID="tbName" runat="server" CssClass="form-control" placeholder="Enter your name"></asp:TextBox>
                <br />
            </div>

            <div class="col-xs-11">
                 <asp:Button ID="btnSignUp" CssClass="btn btn-primary" runat="server" Text="Sign up" OnClick="btnSignUp_Click" />
            </div>

            <div class="col-xs-11">
                 <asp:Label ID="lblMsg"  CssClass ="errorlabel" runat="server" ></asp:Label>
            </div>
            
            </div>
            </div>
                   </div>

        </div>
        

        <%--footer--%>
 
    <footer class="footer-pos">
            <div class ="container ">
               
 
                <p>&copy;2022 CyberShop &middot; All rights reserved &middot; 
                    <a href ="#"> Terms & Conditions </a>&middot;
                    <a href ="#"> About </a>&middot;<a href ="#"> Contact </a> </p>
            </div>

        </footer>



    </form>

</body>
</html>
