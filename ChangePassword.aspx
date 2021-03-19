<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Student_Query_System.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
          .ChangePassBox{
            align-content:center;
            justify-content:center;
            background-color:rgba(0, 0, 0, 0.8);
            box-shadow:8px 8px black;
            height:500px; 
            width: 400px;
            margin:20px auto;
            
            margin-bottom:20px;
            padding:25px;
        }
           .loginLbl{
            
            position:relative;
            color:cyan;
            font-size:25px;
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            left:85px;
            
        }
            .BtnLogin{
            position:relative;
            width:70px;
            top:70px;
            left:30%;
            
        }
             #LoginLbl{
          
            font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            width: 160px;
            margin:auto;
            border:2px solid blue;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="ChangePassBox">
            <asp:Label runat="server" CssClass="loginLbl" ID="CpLabel">Change Password</asp:Label>
           <div class="form-floating mb-3" style="margin-top:20px;">
               <asp:TextBox runat="server" type="password" class="form-control bg-dark text-white border-3" ID="OldPasswordText" placeholder="Enter Old Password"/>
               <label class="text-white" for="floatingInput">Enter Old Password</label>
           </div>
           <div class="form-floating">
               <asp:TextBox runat="server" type="password" class="form-control bg-dark text-white border-3" ID="NewPassw1" placeholder="Password"/>
               <label class="text-white" for="floatingPassword">Enter New Password</label>
           </div>
                <div class="form-floating" style="margin-top:10px;">
               <asp:TextBox runat="server" type="password" class="form-control bg-dark text-white border-3" ID="NewPassw2" placeholder="Password"/>
               <label class="text-white" for="floatingPassword">Re Enter Password</label>
           </div>
       <asp:Button runat="server" ID ="LoginBtn" CssClass="btn btn-danger BtnLogin" Text="Change"  Width="100px"  OnClick="LoginBtn_Click"/>
       
      
            <asp:CompareValidator ID="PasswordValidator" runat="server" ControlToCompare="NewPassw2" ControlToValidate="NewPassw1" ErrorMessage="Password Does Not match*"></asp:CompareValidator>
       
      
   </div>
</asp:Content>
