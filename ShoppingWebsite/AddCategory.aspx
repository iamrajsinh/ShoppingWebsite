<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="ShoppingWebsite.AddCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card">
        <div class ="container">

            <div class ="form-horizontal">
           
           
           <h2>Add Category</h2>
              <hr class="hrmain"/>
           <br />

                <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-3 control-label lblName" Text="Category Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbCategory" CssClass ="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidatortbCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="The field is required" ControlToValidate="tbCategory" ></asp:RequiredFieldValidator>

               </div>
           </div>

                <div class ="form-group">
               
               <div class ="col-md-3"><div class ="col-md-3"></div>
                    <asp:Label ID="lblMsg" CssClass ="lbl" ForeColor="Green" runat="server" ></asp:Label>
               </div>
           </div>

                
              

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-3 ">

                        <asp:Button ID="btnAddCategory" CssClass ="btn btn-primary" runat="server" Text="Add" OnClick="btnAddCategory_Click"    />
                        
                        
                    </div>
                </div>



                </div>
        </div>

        <h1>Categories</h1>
     

 <div class="panel panel-default " style="background-color: #1C1C1C;  color: #FFFFFF;">

               <div class="panel-heading" style="background-color: #1C1C1C; color: #FFFFFF;"> All Categories</div>


     <asp:repeater ID="rptrCategory" runat="server" >

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Categories</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("CatID") %> </th>
                    <td><%# Eval("CatName") %>   </td>

                    <td>Edit</td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
   
</div>



      </div>

</asp:Content>
