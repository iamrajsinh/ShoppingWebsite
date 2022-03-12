<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="ShoppingWebsite.ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div style="padding-top: 50px;">
        <div class="col-md-6">
            <div style="max-width: 480px;" classo="thumbnail">




                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>

                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">

                        <asp:Repeater ID="rptrImage" runat="server">
                            <ItemTemplate>
                                <div class="item <%# GetActiveImgClass(Container.ItemIndex) %>">
                                    <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("Name") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>"  onerror="this.src='images/ProductImages/NOTfound.png'">
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>


                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>


                    


            </div>
        </div>
        <div class="col-md-5">
            <asp:Repeater ID="rptrProductDetails" runat="server" OnItemDataBound="rptrProductDetails_ItemDataBound">
                <ItemTemplate>
            <div class="divDet1">
                <h1 class="proNameView"><%# Eval("PName") %> </h1>
                <span class="proOgPriceView">Rs.<%#Eval("PPrice","{0:c}") %></span><span class="proPriceDiscountView">&nbsp;(Off Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %>)</span><p class="proPriceView">Rs. <%#Eval("PSelPrice","{0:c}") %></p>
            </div>
            <div class="divDet2">

                <asp:Button ID="btnAddtoCart" CssClass="mainButton" runat="server" Text="Add to Cart" OnClick="btnAddtoCart_Click"/>

                 <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>

            </div>

            <div class="divDet3">

                <h5 class="h5DescriptionHead">Description</h5>
                <p class="pDesc">  <%#Eval("PDescription") %>  </p>



                <h5 class="h5DetailsHead">Details</h5>
                <p class="pDetail"> <%#Eval("PProductDetails") %>  </p>
            </div>
                    <div class="divchecks">

               <p><%# ((int)Eval("FreeDelivery")==1)? "Free Delivery":""  %>    </p>
                <p><%# ((int)Eval("7DayRet")==1)? "7 Days Return":""  %></p>
                <p><%# ((int)Eval("COD")==1)? "Cash on Delivery":"" %></p>


                    </div>

                      <asp:HiddenField ID="hfCatID" runat="server" Value='<%# Eval("PcategoryID") %>' />
                    <asp:HiddenField ID="hfSubCatID" runat="server" Value='<%# Eval("PSubCatID") %>' />
                    <asp:HiddenField ID="hfCompanyID" runat="server" Value='<%# Eval("PCompanyID") %>' />

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>

</asp:Content>
