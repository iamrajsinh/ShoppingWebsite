<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="ShoppingWebsite.AddProducs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



        <div class="card">
        <div class ="container">

            <div class ="form-horizontal">
           
           
           <h2>Add Product</h2>
              <hr class="hrmain"/>
           <br />

                <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-3 control-label lblName" Text="Product Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbProductName" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label2" runat="server" CssClass ="col-md-3 control-label lblName" Text="Price"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbPrice" CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label3" runat="server" CssClass ="col-md-3 control-label lblName" Text="Selling price"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbsellPrice"  CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label4" runat="server" CssClass ="col-md-3 control-label lblName" Text="Company Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlCompany" CssClass ="form-control" runat="server"></asp:DropDownList>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label5" runat="server" CssClass ="col-md-3 control-label lblName" Text="Category"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlCategory" CssClass ="form-control" runat="server"  AutoPostBack ="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged"></asp:DropDownList>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label6" runat="server" CssClass ="col-md-3 control-label lblName" Text="Sub-Category"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlSubCategory" CssClass ="form-control"  style="  border-radius: 5px;  background-color: #1c1c1c;" runat="server"></asp:DropDownList>


               </div>
           </div>

                 <div class ="form-group">
               <asp:Label ID="Label15" runat="server" CssClass ="col-md-3 control-label lblName" Text="Quantity"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbQuantity"  CssClass ="form-control" runat="server"></asp:TextBox>


               </div>
           </div>


                <div class ="form-group">
               <asp:Label ID="Label7" runat="server" CssClass ="col-md-3 control-label lblName" Text="Description"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbDescription" CssClass ="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label8" runat="server" CssClass ="col-md-3 control-label lblName" Text="Product details"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbPDetail" CssClass ="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>


               </div>
           </div>

                                <hr  class="hrother"/>

                <div class ="form-group">
               <asp:Label ID="Label9" runat="server" CssClass ="col-md-3 control-label lblName" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg01" CssClass ="form-control" runat="server" />


               </div>
           </div>

                 <div class ="form-group">
               <asp:Label ID="Label10" runat="server" CssClass ="col-md-3 control-label lblName" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg02" CssClass ="form-control" runat="server" />


               </div>
           </div>

                 <div class ="form-group">
               <asp:Label ID="Label11" runat="server" CssClass ="col-md-3 control-label lblName" Text="Upload Image"></asp:Label>
               <div class ="col-md-3">
                   <asp:FileUpload ID="fuImg03" CssClass ="form-control" runat="server" />
                   

                   <br />
                   


               </div>s
           </div>
                <hr  class="hrother"/>

                <div class ="form-group">
               <asp:Label ID="Label12" runat="server" CssClass ="col-md-3 control-label lblName" Text="Free delivery"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="cbFD" CssClass ="form-control"  BorderStyle="None"  runat="server" />


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label14" runat="server" CssClass ="col-md-3 control-label lblName" Text="Cash on delivey"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="cbCOD" CssClass ="form-control"  BorderStyle="None"  runat="server" />


               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label13" runat="server" CssClass ="col-md-3 control-label lblName" Text="7 days return"></asp:Label>
               <div class ="col-md-3">
                   <asp:CheckBox ID="cb7Ret" CssClass ="form-control"  BorderStyle="None" runat="server" />


               </div>
           </div>

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>s
                    <div class ="col-md-3 ">

                        <asp:Button ID="btnAdd" CssClass ="btn btn-primary" runat="server" Text="Add" OnClick="btnAdd_Click"  />
                        
                        
                    </div>
                </div>

                </div>
        </div>
      </div>

    

</asp:Content>
