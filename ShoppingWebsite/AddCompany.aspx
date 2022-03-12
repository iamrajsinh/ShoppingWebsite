<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddCompany.aspx.cs" Inherits="ShoppingWebsite.AddCompany" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="card">
        <div class ="container">

            <div class ="form-horizontal">
           
           
           <h2>Add Company</h2>
              <hr class="hrmain"/>
           <br />

                <div class ="form-group">
               <asp:Label ID="Label1" runat="server" CssClass ="col-md-3 control-label lblName" Text="Company Name"></asp:Label>
               <div class ="col-md-3">
                   <asp:TextBox ID="tbCompany" CssClass ="form-control" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidatorCompanyName" runat="server" CssClass ="text-danger " ErrorMessage="The field is required" ControlToValidate="tbCompany" ></asp:RequiredFieldValidator>

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

                        <asp:Button ID="btnAddCompany"  CssClass ="AddBtn"  runat="server" Text="Add" OnClick="btnAddCompany_Click"   />
                        
                        
                    </div>
                </div>



                </div>
        </div>


                <h1>Companies</h1>
     

 <div class="panel panel-default " style="background-color: #1C1C1C;  color: #FFFFFF;">

               <div class="panel-heading" style="background-color: #1C1C1C; color: #FFFFFF;"> All Companies</div>


     <asp:repeater ID="rptrCompanies" runat="server" >

         <HeaderTemplate>
             <table class="table">
                  <thead>
                    <tr>
                        <th>#</th>
                        <th>Company</th>
                        <th>Edit</th>

                    </tr>

                </thead>



            <tbody>
         </HeaderTemplate>


         <ItemTemplate>
             <tr>
                    <th> <%# Eval("CompanyID") %> </th>
                    <td><%# Eval("Name") %>   </td>

                    <td>Edit</td>
                </tr>
         </ItemTemplate>


         <FooterTemplate>
             </tbody>

              </table>
         </FooterTemplate>

     </asp:repeater>

              
                
         
         

   
</div>

<hr />



<%--<div class="row">
         

         <div class ="col-md-6"> 

         <div class="row">
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter ID:</label>
                        <asp:TextBox ID="txtID" CssClass="form-control" runat="server" AutoPostBack="true"  ontextchanged="txtID_TextChanged"></asp:TextBox> 
                        
                    </div>
                    <div class="form-group">
                   
                    </div>
         </div>
         <div class="col-md-6">
         <div class="form-group">
                        <label>Enter Brand:</label>
                        <asp:TextBox ID="txtUpdateBrandName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
         
          <div class="form-group">
                        <asp:Button ID="btnUpdateBrand" CssClass ="btn btn-primary " runat="server" 
                            Text="UPDATE" onclick="btnUpdateBrand_Click"  />
                    </div>
         </div>
        
         </div>
                    
                    

                    
                    
          </div>    
          <div class="col-md-6"></div>

 </div>--%>




      </div>


</asp:Content>
