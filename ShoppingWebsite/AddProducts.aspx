<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="ShoppingWebsite.AddProducs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



        <div class="card">
        <div class ="container">

            <div class ="form-horizontal">
           
           
           <h2>Add Product</h2>
              <hr />
           <br />

                <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-2 control-label lblName" Text="Product Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbProductName" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label2" runat="server" CssClass ="col-md-2 control-label lblName" Text="Price"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbPrice" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-2 control-label lblName" Text="Selling price"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbsellPrice" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label4" runat="server" CssClass ="col-md-2 control-label lblName" Text="Company Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddCompany" runat="server"></asp:DropDownList>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label5" runat="server" CssClass ="col-md-2 control-label lblName" Text="Category"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddCategory" runat="server"></asp:DropDownList>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label6" runat="server" CssClass ="col-md-2 control-label lblName" Text="Sub-Category"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddSubCategory" runat="server"></asp:DropDownList>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label7" runat="server" CssClass ="col-md-2 control-label lblName" Text="Description"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbDescription" CssClass ="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label8" runat="server" CssClass ="col-md-2 control-label lblName" Text="Product details"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbPDetail" CssClass ="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label9" runat="server" CssClass ="col-md-2 control-label lblName" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg01" CssClass ="col-md-2 control-label" runat="server" />


               </div>
           </div>

                 <div class ="form-group">
               <asp:Label ID="Label10" runat="server" CssClass ="col-md-2 control-label lblName" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg02" CssClass ="col-md-2 control-label" runat="server" />


               </div>
           </div>

                 <div class ="form-group">
               <asp:Label ID="Label11" runat="server" CssClass ="col-md-2 control-label lblName" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg03" CssClass ="col-md-2 control-label" runat="server" />


               </div>
           </div>

        </div>
      </div>

    

</asp:Content>
