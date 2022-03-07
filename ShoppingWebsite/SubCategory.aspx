<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="SubCategory.aspx.cs" Inherits="ShoppingWebsite.SubCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="card">
        <div class ="container">

            <div class ="form-horizontal">
           
           
           <h2>Add Sub Category</h2>
              <hr class="hrmain"/>
           <br />



                <div class ="form-group">
               <asp:Label ID="Label2" runat="server" CssClass ="col-md-3 control-label lblName" Text="Main categoryID"></asp:Label>
               <div class ="col-md-3">
                   <asp:DropDownList ID="ddlMainCatID" runat="server" CssClass ="form-control"></asp:DropDownList>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidatorMainCatID" runat="server" CssClass ="text-danger " ErrorMessage="Please select the parent category" ControlToValidate="ddlMainCatID" ></asp:RequiredFieldValidator>

               </div>
           </div>

                <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-3 control-label lblName" Text="SubCategory Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbSubCategory" CssClass ="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidatortbSubCategoryName" runat="server" CssClass ="text-danger " ErrorMessage="The field is required" ControlToValidate="tbSubCategory" ></asp:RequiredFieldValidator>

               </div>
           </div>

                <div class ="form-group">
               
               <div class ="col-md-4"><div class ="col-md-3"></div>
                    <asp:Label ID="lblMsg" CssClass ="lbl" ForeColor="Green" runat="server" ></asp:Label>
               </div>
           </div>

                
              

                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-3 ">

                        <asp:Button ID="btnAddSubCategory" CssClass ="btn btn-primary" runat="server" Text="Add" OnClick="btnAddSubCategory_Click"   />
                        
                        
                    </div>
                </div>



                </div>
        </div>



        <h1>Sub Categories</h1>
     

 <div class="panel panel-default " style="background-color: #1C1C1C;  color: #FFFFFF;">

               <div class="panel-heading" style="background-color: #1C1C1C; color: #FFFFFF;"> All Sub Categories</div>


     <asp:repeater ID="rptrSubCat" runat="server" >

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Sub Category</th>
                        <th>Parent Category</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("SubCatID") %> </th>
                    <td><%# Eval("SubCatName") %>   </td>
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
