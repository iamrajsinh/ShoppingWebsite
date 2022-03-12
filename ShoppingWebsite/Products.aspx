<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="ShoppingWebsite.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="padding-top: 100px">
        <asp:Repeater ID="rptrProducts" runat="server">
            <ItemTemplate>
                <div class="card">
                <div class="col-sm-3 col-md-3">
                    <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">

                    <div class="thumbnail">
                        <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>" />

                        <div class="caption" style="height: 100px; margin-bottom: 0px; padding-bottom: 0px;">
                            <div class="procompany"><%# Eval ("CompanyName") %> </div>
                            <div class="proName"><%# Eval ("PName") %></div>
                            <div class="proPrice"><span class="proOgPrice"><%# Eval ("PPrice","{0:0,00}") %></span> <%# Eval ("PSelPrice","{0:c}") %><span class="proPriceDiscount">&nbsp;(<%# Eval("DiscAmount","{0:0,00}") %> off) </span></div>




                        </div>
                    </div>

                         </a>
                </div>
               </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>


</asp:Content>
